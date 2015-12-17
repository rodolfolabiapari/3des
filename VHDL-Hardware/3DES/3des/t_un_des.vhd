
-- Tripe UnDES
-- Arquivo responsavel por gerenciar os procedimentos para a realizacao de decriptacao utilizando
-- 3 chaves de 64 bits
-- utiliza como compontente, UnDes onde será realizado 3 processamentos alternando as chaves
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity t_un_des is
	port(
		clock          : IN std_logic;
		reset          : In std_logic;
		-- texto de entrada
		text64         : IN std_logic_vector(0 TO 63);
		-- as 3 chaves de 64 bits
		key192         : IN std_logic_vector(0 TO 191);
		-- inforamcao de termino de processamento
		done           : OUT std_logic;
		-- retorno da informacao resultante
		textOut64      : OUT std_logic_vector(0 TO 63)
	);
end t_un_des;

architecture t_un_des_behav of t_un_des is
	-- UnDES
	component un_des 
		port (
			clk          : IN std_logic;
			reset        : IN std_logic;
			text64       : IN std_logic_vector(0 TO 63);
			key          : IN std_logic_vector(0 TO 63);
			done         : OUT std_logic;
			textOut64    : OUT std_logic_vector(0 TO 63)
		);
	end component;

	signal sig_undes_text64 : std_logic_vector(0 to 63);
	signal sig_undes_key : std_logic_vector(0 to 63);
	signal sig_undes_textOut64 : std_logic_vector(0 to 63);
	signal sig_undes_done : std_logic;
	signal sig_undes_reset : std_logic;


	-- Maquina de estados
	type state_type is (state_reset,
		un_des1Carrega, un_des1Opera, un_des1SalvaInformacao,
		un_des2Carrega, un_des2Opera, un_des2SalvaInformacao,
		un_des3Carrega, un_des3Opera, un_des3SalvaInformacao,
		pronto);
	signal estado   : state_type;

	-- Buffer para o resultado de cada chave
	signal resultadoOperacao1 : std_logic_vector(0 to 63);
	signal resultadoOperacao2 : std_logic_vector(0 to 63);
	signal resultadoOperacao3 : std_logic_vector(0 to 63);
begin

	mapUN_Des: un_des port map(
		clk       => clock       ,
		reset     => sig_undes_reset     ,
		text64    => sig_undes_text64    ,
		key       => sig_undes_key       ,
		done      => sig_undes_done      ,
		textOut64 => sig_undes_textOut64  
	);


	process (clock, reset)
	begin
		-- Reseta todo o processamento
		if reset = '1' then
			estado <= state_reset;
		else 
			if (clock'event and clock = '1') then
				case estado is
					-- Reset
					when state_reset =>
						if (reset = '0') then
							estado <= un_des3Carrega;
						end if;

					-- Carrega as informacoes no UnDES
					when un_des3Carrega =>
						estado <= un_des3Opera;

					-- Realiza operacao
					when un_des3Opera =>

						if (sig_undes_done = '1') then
							estado <= un_des3SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when un_des3SalvaInformacao =>
						estado <= un_des2Carrega;



					-- Carrega as informacoes no UnDES
					when un_des2Carrega =>
						estado <= un_des2Opera;

					-- Realiza operacao
					when un_des2Opera =>

						if (sig_undes_done = '1') then
							estado <= un_des2SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when un_des2SalvaInformacao =>
						estado <= un_des1Carrega;



					-- Carrega as informacoes no UnDES
					when un_des1Carrega =>
						estado <= un_des1Opera;

					-- Realiza operacao
					when un_des1Opera =>

						if (sig_undes_done = '1') then
							estado <= un_des1SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when un_des1SalvaInformacao =>
						estado <= pronto;

					when others =>
				end case;

			end if;
		end if;
	end process;



	-- Logic to advance to the next state
	process (clock, reset)
	begin
		if (rising_edge(clock)) then
			case estado is
				-- Estado de reset
				when state_reset =>
					done <= '0';
					sig_undes_reset <= '1';
					textOut64 <= (others => '0');


				-- Carrega o testo e a chave 3
				when un_des3Carrega =>
					sig_undes_text64 <= text64;
					sig_undes_key <= key192(0 to 63);

				-- Opera
				when un_des3Opera =>
					sig_undes_reset <= '0';
					if (sig_undes_done = '1') then
						resultadoOperacao3 <= sig_undes_textOut64;
					end if;

				-- Salva a informacao
				when un_des3SalvaInformacao =>
					sig_undes_reset <= '1';



				-- Carrega o testo e a chave 2
				when un_des2Carrega=>
					sig_undes_text64 <= resultadoOperacao3;
					sig_undes_key <= key192(64 to 127);

				-- Opera
				when un_des2Opera =>
					sig_undes_reset <= '0';
					if (sig_undes_done = '1') then
						resultadoOperacao2 <= sig_undes_textOut64;
					end if;

				-- Salva a informacao
				when un_des2SalvaInformacao =>
					sig_undes_reset <= '1';



				-- Carrega o testo e a chave 1
				when un_des1Carrega=>
					sig_undes_text64 <= resultadoOperacao2;
					sig_undes_key <= key192(128 to 191);

				-- Opera
				when un_des1Opera =>
					sig_undes_reset <= '0';
					if (sig_undes_done = '1') then
						resultadoOperacao1 <= sig_undes_textOut64;
					end if;

				-- Salva a informacao
				when un_des1SalvaInformacao =>



				-- Informa o sucessso
				when pronto =>
					done <= '1';
					textOut64 <= resultadoOperacao1;

				when others =>
			end case;
		end if;
	end process;
end t_un_des_behav;
