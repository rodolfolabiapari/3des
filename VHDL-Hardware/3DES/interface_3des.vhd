
-- Sistema controlador de todas as funcionalidades
-- reebe o tipo de operacao (encripta ou decripta), as chaves, a quantidade de blocos e os blocos
library IEEE;
use IEEE.std_logic_1164.all; -- std_logic e std_logic_vector
use IEEE.numeric_std.all; -- unsigned: array of std_logic

entity interface_3des is
	generic(
		-- constante de quantidade de bits de enderenco a ser utilizado
		bits_endereco	: integer := 10
	);

	port(
		clock          : IN std_logic;
		-- barramento de entrada para o sistema
		barramentoIn   : in std_logic_vector(63 downto 0);
		-- informa se a informacao a ser lida pelo sistema esta estavel
		inStable       : in std_logic;
		reset          : In std_logic;
		-- informa fim de operacao
		done           : OUT std_logic
	);
end interface_3des;

architecture interface_3des_behav of interface_3des is
	-- Triple DES
	component t_des 
		port(
			clock          : IN std_logic;
			reset          : In std_logic;
			text64         : IN std_logic_vector(0 TO 63);
			key192         : IN std_logic_vector(0 TO 191);
			done           : OUT std_logic;
			textOut64      : OUT std_logic_vector(0 TO 63)
		);
	end component;

	signal s_tdes_reset     : std_logic;
	signal s_tdes_text64    : std_logic_vector(0 TO 63);
	signal s_tdes_key192    : std_logic_vector(0 TO 191);
	signal s_tdes_done      : std_logic;
	signal s_tdes_textOut64 : std_logic_vector(0 TO 63);


	-- Triple UnDES
	component t_un_des 
		port(
			clock          : IN std_logic;
			reset          : In std_logic;
			text64         : IN std_logic_vector(0 TO 63);
			key192         : IN std_logic_vector(0 TO 191);
			done           : OUT std_logic;
			textOut64      : OUT std_logic_vector(0 TO 63)
		);
	end component;

	signal s_tundes_reset     : std_logic;
	signal s_tundes_text64    : std_logic_vector(0 TO 63);
	signal s_tundes_key192    : std_logic_vector(0 TO 191);
	signal s_tundes_done      : std_logic;
	signal s_tundes_textOut64 : std_logic_vector(0 TO 63);


	-- Ram para armazenamento do texto e seu resultado
	component ramTexto
		generic(
			bits_endereco	: integer := 10; 
			bits_dado		: integer := 64
		);
		port (
			clock   : in	std_logic;
			escrita	: in	std_logic;
			endereco : in	std_logic_vector(bits_endereco - 1 DOWNTO 0);
			datain	: in	std_logic_vector(bits_dado - 1 DOWNTO 0);
			dataout : out std_logic_vector(bits_dado - 1 DOWNTO 0)
		);
	end component;

	signal s_ram_escrita : std_logic;
	signal s_ram_endereco : std_logic_vector(bits_endereco - 1 downto 0);
	signal s_ram_datain : std_logic_vector(63 downto 0);
	signal s_ram_dataout : std_logic_vector(63 downto 0);


	-- variaveis internas
	-- quantidade de blocos
	signal quantidade_blocos : unsigned (bits_endereco - 1 downto 0); 
	-- contador
	signal i : unsigned (bits_endereco - 1 downto 0);

	-- variavel de controle
	signal controle_recebido : std_logic;


	-- registrador para as chaves recebidas
	signal reg_key0 : std_logic_vector(0 to 63);
	signal reg_key1 : std_logic_vector(0 to 63);
	signal reg_key2 : std_logic_vector(0 to 63);

	-- variavel para tipo de operacao
	signal encripta : std_logic;


	-- Maquina de estados
	type state_type is (state_reset,
		state_carregando_funcao, 
		state_carregando_chave0, state_carregando_chave1, state_carregando_chave2,
		state_carregando_quantidade_blocos,
		state_carregando_texto,
		preparacao_operacao,
		state_encripta_recebe_ram, state_encripta_opera, state_encripta_recebe_resultado, state_encripta_seleciona_bloco,
		state_decripta_recebe_ram, state_decripta_opera, state_decripta_recebe_resultado, state_decripta_seleciona_bloco,
		pronto);
	signal estado   : state_type;

begin

	maptdes: t_des port map(
		clock     => clock     ,
		reset     => s_tdes_reset     ,
		text64    => s_tdes_text64    ,
		key192    => s_tdes_key192    ,
		done      => s_tdes_done      ,
		textOut64 => s_tdes_textOut64 
	);

	maptundes: t_un_des port map(
		clock     => clock     ,
		reset     => s_tundes_reset     ,
		text64    => s_tundes_text64    ,
		key192    => s_tundes_key192    ,
		done      => s_tundes_done      ,
		textOut64 => s_tundes_textOut64 
	);

	mapram: ramTexto port map(
		clock     => clock ,
		escrita   => s_ram_escrita ,
		endereco  => s_ram_endereco ,
		datain    => s_ram_datain ,
		dataout   => s_ram_dataout 
	);


	process (clock, reset)
	begin
		-- reseta todos os dados
		if reset = '1' then
			estado <= state_reset;
			controle_recebido <= '0';
		else 
			if (clock'event and clock = '1') then
				case estado is
					-- Reset todo o processo
					when state_reset =>
						if (reset = '0') then
							estado <= state_carregando_funcao;
						end if;

					-- recebe qual tipo de funcao a ser realizada
					when state_carregando_funcao =>
						if (inStable = '1') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= state_carregando_chave0;
						end if;


					-- recebe chave 0
					when state_carregando_chave0 =>
						if (inStable = '1') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= state_carregando_chave1;
						end if;

					-- recebe chave 1
					when state_carregando_chave1 =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= state_carregando_chave2;
						end if;

					-- recebe 2
					when state_carregando_chave2 =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= state_carregando_quantidade_blocos;
						end if;


					-- recebe quantidade de blocos de texto
					when state_carregando_quantidade_blocos =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							estado <= state_carregando_texto;
						end if;


					-- recebe o texto em blocos de 64 bits
					when state_carregando_texto =>
						if (inStable = '1' and controle_recebido = '0') then
							controle_recebido <= '1';
						elsif(inStable = '0' and controle_recebido = '1') then
							controle_recebido <= '0';
							if (i >= quantidade_blocos or i >= (2 ** bits_endereco - 1)) then
								estado <= preparacao_operacao;
							end if;
						end if;

					-- prepara a operacao a ser realizada
					when preparacao_operacao =>
						controle_recebido <= '0';
						if (encripta = '1') then
							estado <= state_encripta_seleciona_bloco;
						else 
							estado <= state_decripta_seleciona_bloco;
						end if;



					-- Seleciona o bloco a ser usado
				when state_encripta_seleciona_bloco =>
					estado <= state_encripta_recebe_ram;
					if (i >= quantidade_blocos ) then
						estado <= pronto;
					end if;

				-- recebe-o da van
				when state_encripta_recebe_ram =>
					estado <= state_encripta_opera;

				-- opera
				when state_encripta_opera =>
					if (s_tdes_done = '1') then
						estado <= state_encripta_recebe_resultado;
					end if;

				-- recebe o resultado
				when state_encripta_recebe_resultado =>
					estado <= state_encripta_seleciona_bloco;



				-- Seleciona, na RAM qual o proximo bloco a ser operado
				when state_decripta_seleciona_bloco =>
					estado <= state_decripta_recebe_ram;
					if (i >= quantidade_blocos ) then
						estado <= pronto;
					end if;

				-- Recebe o bloco escolhido
				when state_decripta_recebe_ram =>
					estado <= state_decripta_opera;

				-- Opera o bloco
				when state_decripta_opera =>
					if (s_tundes_done = '1') then
						estado <= state_decripta_recebe_resultado;
					end if;

				-- Salva o bloco operado
				when state_decripta_recebe_resultado =>
					estado <= state_decripta_seleciona_bloco;

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
					reg_key0 <= x"0000_0000_0000_0000";
					reg_key1 <= (others => '0');
					reg_key2 <= (others => '0');
					encripta <= '0';	
					quantidade_blocos <= (others => '0');
					s_tdes_reset <= '1';
					s_tundes_reset <= '1';
					i <= (others => '0');

				-- Recebe qual operacao sera realizada
				when state_carregando_funcao =>
					if (inStable = '1') then  
						encripta <= barramentoIn(0);
					end if ;

				-- Recebe a chave 0
				when state_carregando_chave0 =>
					if (inStable = '1') then  
						reg_key0 <= barramentoIn;
					end if ;

				-- Recebe a chave 1
				when state_carregando_chave1 =>
					if (inStable = '1') then  
						reg_key1 <= barramentoIn;
					end if ;

				-- Recebe a chave 2
				when state_carregando_chave2 =>
					if (inStable = '1') then  
						reg_key2 <= barramentoIn;
					end if ;


				-- Recebe a quantidade de blocos
				when state_carregando_quantidade_blocos =>
					if (inStable = '1') then  
						quantidade_blocos <= unsigned(barramentoIn(bits_endereco - 1 downto 0));
						s_ram_escrita <= '1';
					end if ;


				-- Recebe o texto salvando na RAM
				when state_carregando_texto =>
					s_ram_escrita <= '1';
					if (inStable = '1') then 
						s_ram_endereco <= std_logic_vector(i);
						s_ram_datain <= barramentoIn;
					else
						i <= i + 1;
					end if;

				-- Prepara o inicio da operacao enviando as chaves
				when preparacao_operacao =>
					s_tdes_key192 <= reg_key0 & reg_key1 & reg_key2;
					s_tundes_key192 <= reg_key0 & reg_key1 & reg_key2;
					i <= (others => '0');



				-- Seleciona qual bloco da ram sera operado
				when state_encripta_seleciona_bloco =>
					s_ram_escrita <= '0';
					s_tdes_reset <= '1';
					s_ram_endereco <= std_logic_vector(i);
					if (i >= quantidade_blocos ) then
						i <= (others => '0');
					end if;

				-- Recebe o bloco da ram
				when state_encripta_recebe_ram =>

				-- Opera o bloco recebido pela ram
				when state_encripta_opera =>
					s_tdes_reset <= '0';
					s_tdes_text64 <= s_ram_dataout;

				-- Salva o resultado na ram
				when state_encripta_recebe_resultado =>
					s_ram_escrita <= '1';	
					s_tdes_reset <= '0'; 
					s_ram_datain <= s_tdes_textOut64;
					s_ram_endereco <= std_logic_vector(i +  -- unsigned to std
											to_unsigned( -- offset
												2 ** (bits_endereco - 1)
												, bits_endereco)
											);
					i <= i + 1;



				-- Seleciona qual bloco da ram sera operado
				when state_decripta_seleciona_bloco =>
					s_ram_escrita <= '0';
					s_tundes_reset <= '1';
					s_ram_endereco <= std_logic_vector(i);
					if (i >= quantidade_blocos ) then
						i <= (others => '0');
					end if;

				-- Recebe o bloco da ram
				when state_decripta_recebe_ram =>

				-- Opera o bloco recebido pela ram
				when state_decripta_opera =>
					s_tundes_reset <= '0';
					s_tundes_text64 <= s_ram_dataout;

				-- Salva o resultado na ram
				when state_decripta_recebe_resultado =>
					s_ram_escrita <= '1';	
					s_tundes_reset <= '0'; 
					s_ram_datain <= s_tundes_textOut64;
					s_ram_endereco <= std_logic_vector(i +  -- unsigned to std
											to_unsigned( -- offset
												2 ** (bits_endereco - 1)
												, bits_endereco)
											);
					i <= i + 1;



				-- Informa o sucesso  
				when pronto =>
					done <= '1';


				when others =>
			end case;
		end if;
	end process;
end interface_3des_behav;
