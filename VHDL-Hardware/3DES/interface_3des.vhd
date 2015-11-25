library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interface_3des is
	port(
		clock          : IN std_logic;
		barramentoIn   : in std_logic_vector(63 downto 0);
		inStable       : in std_logic;
		-- barramentoOut  : in std_logic_vector(63 downto 0);
		reset          : In std_logic;
		done           : OUT std_logic
	);
end interface_3des;

architecture interface_3des_behav of interface_3des is
--	component t_des 
--		port(
--			clock          : IN std_logic;
--			reset          : In std_logic;
--			text64         : IN std_logic_vector(0 TO 63);
--			key192         : IN std_logic_vector(0 TO 191);
--			done           : OUT std_logic;
--			textOut64      : OUT std_logic_vector(0 TO 63)
--		);
--	end component;
--
--	component t_un_des 
--		port(
--			clock          : IN std_logic;
--			reset          : In std_logic;
--			text64         : IN std_logic_vector(0 TO 63);
--			key192         : IN std_logic_vector(0 TO 191);
--			done           : OUT std_logic;
--			textOut64      : OUT std_logic_vector(0 TO 63)
--		);
--	end component;

	--registrador de flags:
	--quantidade de blocos de texto
	--encripta ou decripta

--	component ramTexto
--		generic(
--			bits_endereco	: integer := 64; 
--			bits_dado		: integer := 64
--		);
--		port (
--			clock   : in	std_logic;
--			escrita	: in	std_logic;
--			endereco : in	std_logic_vector(bits_endereco - 1 DOWNTO 0);
--			datain	: in	std_logic_vector(bits_dado - 1 DOWNTO 0);
--			dataout : out std_logic_vector(bits_dado - 1 DOWNTO 0)
--		);
--	end component;



	type state_type is (state_reset,
		carregando_funcao, 
		carregando_chave0, carregando_chave1, carregando_chave2,
		carregando_quantidade_blocos,
		carregando_texto,
		pronto);
	signal estado   : state_type;

	signal reg_key0 : std_logic_vector(0 to 63);
	signal reg_key1 : std_logic_vector(0 to 63);
	signal reg_key2 : std_logic_vector(0 to 63);

	signal encripta : std_logic;

	signal sig_reset : std_logic;

	signal sig_escrita : std_logic;
	signal sig_endereco : std_logic_vector(63 downto 0);
	signal sig_datain : std_logic_vector(63 downto 0);
	signal sig_dataout : std_logic_vector(63 downto 0);

	signal quantidade_blocos : unsigned (63 downto 0); -- 64 ^ 2 = 4.096
	signal i : unsigned (63 downto 0); -- 64 ^ 2 = 4.096

	signal controle_recebido : std_logic;
begin

--	maptdes: t_des port map(
--		clock     => sig_tdes_clock     ,
--		reset     => sig_tdes_reset     ,
--		text64    => sig_tdes_text64    ,
--		key192    => sig_tdes_key192    ,
--		done      => sig_tdes_done      ,
--		textOut64 => sig_tdes_textOut64 
--	);
--
--	maptundes: t_un_des port map(
--		clock     => sig_tundes_clock     ,
--		reset     => sig_tundes_reset     ,
--		text64    => sig_tundes_text64    ,
--		key192    => sig_tundes_key192    ,
--		done      => sig_tundes_done      ,
--		textOut64 => sig_tundes_textOut64 
--	);

--	mapram: ramTexto port map(
--		clock     => clock ,
--		escrita   => sig_escrita ,
--		endereco  => sig_endereco ,
--		datain    => sig_datain ,
--		dataout   => sig_dataout 
--	);


	process (clock, reset)
	begin
		if reset = '1' then
			estado <= state_reset;
		else 
			if (clock'event and clock = '1') then
				case estado is
					when state_reset =>
						if (reset = '0') then
							estado <= carregando_funcao;
							controle_recebido <= '0';
						end if;


					when carregando_funcao =>
						if (inStable = '1') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= carregando_chave0;
						end if;


					when carregando_chave0 =>
						if (inStable = '1') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= carregando_chave1;
						end if;

					when carregando_chave1 =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= carregando_chave2;
						end if;

					when carregando_chave2 =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= carregando_quantidade_blocos;
						end if;


					when carregando_quantidade_blocos =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= carregando_texto;
						end if;


					when carregando_texto =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							if (i > quantidade_blocos ) then
								estado <= pronto;
							else 
								i <= i + 1;
							end if;
						end if;

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
				when state_reset =>
					done <= '0';
					sig_reset <= '1';
					reg_key0 <= x"0000_0000_0000_0000";
					reg_key1 <= x"0000_0000_0000_0000";
					reg_key2 <= x"0000_0000_0000_0000";
					encripta <= '0';

				when carregando_funcao =>
					if (inStable = '1') then  
						encripta <= barramentoIn(0);
					end if ;


				when carregando_chave0 =>
					if (inStable = '1') then  
						reg_key0 <= barramentoIn;
					end if ;

				when carregando_chave1 =>
					if (inStable = '1') then  
						reg_key1 <= barramentoIn;
					end if ;

				when carregando_chave2 =>
					if (inStable = '1') then  
						reg_key2 <= barramentoIn;
					end if ;


				when carregando_quantidade_blocos =>
					if (inStable = '1') then  
						quantidade_blocos <= unsigned(barramentoIn);
					end if ;


				when carregando_texto =>
					sig_endereco <= std_logic_vector(i);
					sig_datain <= barramentoIn;


--					
--				when des1Carrega =>
--					sig_text64 <= text64;
--					sig_key <= key192(0 to 63);
--
--				when des1Opera =>
--					sig_reset <= '0';
--					if (sig_done = '1') then
--						resultadoOperacao1 <= sig_textOut64;
--					end if;
--
--				when des1SalvaInformacao =>
--					sig_reset <= '1';
--
--
--				when des3Carrega=>
--					sig_text64 <= resultadoOperacao2;
--					sig_key <= key192(128 to 191);
--
--				when des3Opera =>
--					sig_reset <= '0';
--					if (sig_done = '1') then
--						resultadoOperacao3 <= sig_textOut64;
--					end if;
--
--				when des3SalvaInformacao =>

				when pronto =>
					done <= '1';

				when others =>
			end case;
		end if;
	end process;
end interface_3des_behav;
