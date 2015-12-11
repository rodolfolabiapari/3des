
-- Tripe DES
-- Arquivo responsavel por gerenciar os procedimentos para a realizacao de encriptacao utilizando
-- 3 chaves de 64 bits
-- utiliza como compontente, Des onde será realizado 3 processamentos alternando as chaves
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity t_des is
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
end t_des;

architecture t_des_behav of t_des is
	-- DES
	component des 
		port (
			clk          : IN std_logic;
			reset        : In std_logic;
			text64       : IN std_logic_vector(0 TO 63);
			key          : IN std_logic_vector(0 TO 63);
			done         : OUT std_logic;
			textOut64    : OUT std_logic_vector(0 TO 63)
		);
	end component;

	signal sig_des_text64 : std_logic_vector(0 to 63);
	signal sig_des_key : std_logic_vector(0 to 63);
	signal sig_des_textOut64 : std_logic_vector(0 to 63);
	signal sig_des_done : std_logic;
	signal sig_des_reset : std_logic;


	-- Maquina de estados
	type state_type is (state_reset,
		des1Carrega, des1Opera, des1SalvaInformacao,
		des2Carrega, des2Opera, des2SalvaInformacao,
		des3Carrega, des3Opera, des3SalvaInformacao,
		pronto);
	signal estado   : state_type;

	-- Buffer para o resultado de cada chave
	signal resultadoOperacao1 : std_logic_vector(0 to 63);
	signal resultadoOperacao2 : std_logic_vector(0 to 63);
	signal resultadoOperacao3 : std_logic_vector(0 to 63);
begin

	mapDes: des port map(
		clk       => clock       ,
		reset     => sig_des_reset     ,
		text64    => sig_des_text64    ,
		key       => sig_des_key       ,
		done      => sig_des_done      ,
		textOut64 => sig_des_textOut64  
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
							estado <= des1Carrega;
						end if;

					-- Carrega as informacoes no DES
					when des1Carrega =>
						estado <= des1Opera;

					-- Realiza operacao
					when des1Opera =>
						if (sig_des_done = '1') then
							estado <= des1SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when des1SalvaInformacao =>
						estado <= des2Carrega;



					-- Carrega as informacoes no DES
					when des2Carrega =>
						estado <= des2Opera;

					-- Realiza operacao
					when des2Opera =>
						if (sig_des_done = '1') then
							estado <= des2SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when des2SalvaInformacao =>
						estado <= des3Carrega;



					-- Carrega as informacoes no DES
					when des3Carrega =>
						estado <= des3Opera;

					-- Realiza operacao
					when des3Opera =>
						if (sig_des_done = '1') then
							estado <= des3SalvaInformacao;
						end if;

					-- Salva o resultado obtido
					when des3SalvaInformacao =>
						estado <= pronto;

					when others =>
				end case;

			end if;
		end if;
	end process;


	process (clock, reset)
	begin
		if (rising_edge(clock)) then
			case estado is
				-- Estado de reset
				when state_reset =>
					done <= '0';
					sig_des_reset <= '1';
					textOut64 <= (others => '0');


				-- Carrega o testo e a chave 3
				when des1Carrega =>
					sig_des_text64 <= text64;
					sig_des_key <= key192(0 to 63);

				-- Opera
				when des1Opera =>
					sig_des_reset <= '0';
					if (sig_des_done = '1') then
						resultadoOperacao1 <= sig_des_textOut64;
					end if;

				-- Salva a informacao
				when des1SalvaInformacao =>
					sig_des_reset <= '1';



				-- Carrega o testo e a chave 2
				when des2Carrega=>
					sig_des_text64 <= resultadoOperacao1;
					sig_des_key <= key192(64 to 127);

				-- Opera
				when des2Opera =>
					sig_des_reset <= '0';
					if (sig_des_done = '1') then
						resultadoOperacao2 <= sig_des_textOut64;
					end if;

				-- Salva a informacao
				when des2SalvaInformacao =>
					sig_des_reset <= '1';


				-- Carrega o testo e a chave 1
				when des3Carrega=>
					sig_des_text64 <= resultadoOperacao2;
					sig_des_key <= key192(128 to 191);

				-- Opera
				when des3Opera =>
					sig_des_reset <= '0';
					if (sig_des_done = '1') then
						resultadoOperacao3 <= sig_des_textOut64;
					end if;

				-- Salva a informacao
				when des3SalvaInformacao =>



				-- Informa o sucessso
				when pronto =>
					done <= '1';
					textOut64 <= resultadoOperacao3;

				when others =>
			end case;
		end if;
	end process;
end t_des_behav;