-- Importa Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaração do componente
entity chave is
	generic (
		ADDRESS_WIDTH	: integer := 9; -- 65536 endereços
		DATA_WIDTH		: integer := 16
	);
	port(
		clock			: in std_logic; -- Sinal de relógio para sincronização
		reset 			: in std_logic; -- Sinal de reset
		input 			: in std_logic

		--dadoA_in		: in std_logic_vector(7 downto 0); -- Dado de entrada A

		--LedDadoA 	: out std_logic_vector(7 downto 0);	-- Leds representativos para o dado A

		output			: out std_logic -- Carry Flag
		);
end chave;

-- Comportamento do componente
architecture chave_behav of chave is

	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
	signal current_state, next_state: state_type;

	-- Declaração de todos os sinais de entrada e saída do componente a ser adicionado
	component ram port (
	    clock   : in  std_logic;
	    we      : in  std_logic;
	    address : in  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
	    datain  : in  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	    dataout : out std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
	);
	end component;

	-- Componente Subtrator
	component subtrator port (
		dadoA  : in std_logic_vector (7 downto 0);
		dadoB  : in std_logic_vector (7 downto 0);
		sub    : out std_logic_vector(7 downto 0);
		zero : out std_logic;
		negative : out std_logic;
		borrow : out std_logic
	);
	end component;



	-- SINAIS
	-- Declaração dos sinais de entrada e saída do componente

	-- Dados de Entrada
	--signal sig_dadoA, sig_dadoB		: std_logic_vector (7 downto 0);

	-- Subtrator
	signal sig_sub_result	    		: std_logic_vector(7 downto 0);
	signal sig_sub_zero	    			: std_logic;
	signal sig_sub_negative    			: std_logic;
	signal sig_sub_borrow	    		: std_logic;

	-- RAM
	signal sig_ram_clock   : std_logic;
	signal sig_ram_we      : std_logic;
	signal sig_ram_address : std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
	signal sig_ram_datain  : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	signal sig_ram_dataout : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)

begin
	-- Mapeamento de portas dos componentes

	-- Mapeamento de portas do Subtrator
	mapSubtrator: subtrator port map(
		dadoA => dadoA_in,
		dadoB => dadoB_in,
		sub => sig_sub_result,
		zero => sig_sub_zero,
		negative => sig_sub_negative,
		borrow => sig_sub_borrow
	);

	map_Ram: ram port map (
		clock   => sig_ram_clock,
		we      => sig_ram_we,
		address => sig_ram_address,
		datain  => sig_ram_datain
		dataout => sig_ram_dataout
	);


	-- Realiza a troca dos estados
	process (clock, reset)
	begin
		if (reset='1') then
			-- Estado Inicial
			current_state <= s0;
		elsif (rising_edge(clock)) then
			-- Avança o estado
			current_state <= next_state;
		end if;
	end process;


	-- Máquina de estado
	process (current_state, input)
	begin
		case current_state is
			when s0 =>
				we <= '1';
				address <= "000000000";
				datain <= "0000000011111111";

				next_state <= s1;
			when s1 =>
				we <= '0';
				address <= "000000000";

				next_state <= s0;
		end case;
	end process;


	-- Envia dados de entrada para serem representados no respectivos leds
	LedDadoA <= DadoA_in;
	LedDadoB <= DadoB_in;

	-- Inicia-se o processamento da ALU
	ALU: process (clock)
	begin

		-- Para houve qualquer alteração do clock como borda de subida
		if (rising_edge(clock)) then

			-- Define inicialmente o carry como falso
			sig_flagZ <= '0';
			sig_flagO <= '0';
			sig_flagN <= '0';
			sig_flagC <= '0';

			--------------------------- ADD -------------------------------
			if  (sig_contador_result = 1) then

				sig_result <= sig_soma_result;

				-- FLAGS
				sig_flagO <= sig_soma_over;
				sig_flagC <= sig_soma_carry;

			--------------------------- SUB -------------------------------
			elsif  (sig_contador_result = 2) then

				sig_result <= sig_sub_result;

				-- FLAGS
				sig_flagC <= sig_sub_borrow;

			--------------------------- AND -------------------------------
			elsif  (sig_contador_result = 3) then
				sig_result <= dadoA_in(7 downto 0) and dadoB_in(7 downto 0);

			--------------------------- XOR -------------------------------
			elsif  (sig_contador_result = 4)
			then
				sig_result <= dadoA_in(7 downto 0) xor dadoB_in(7 downto 0);

			--------------------------- OR -------------------------------
			elsif  (sig_contador_result = 5) then
				sig_result <= dadoA_in(7 downto 0) or dadoB_in(7 downto 0);

			--------------------------- NOT -------------------------------
			elsif  (sig_contador_result = 6) then
				sig_result <= not(dadoA_in(7 downto 0));

			--------------------------- XNOR -------------------------------
			elsif  (sig_contador_result = 7) then
				sig_result <= not(dadoA_in(7 downto 0) xor dadoB_in(7 downto 0));

			--------------------------- ROTR -------------------------------
			elsif  (sig_contador_result = 8) then
				sig_result <= dadoA_in(0) & dadoA_in(7 downto 1);

			--------------------------- ROTL -------------------------------
			elsif  (sig_contador_result = 9) then
				sig_result <= dadoA_in(6 downto 0) & dadoA_in(7);

			--------------------------- SLL -------------------------------
			elsif  (sig_contador_result = 10) then
				sig_result <= dadoA_in(6 downto 0) & '0';

			--------------------------- SLR -------------------------------
			elsif  (sig_contador_result = 11) then
				sig_result <= '0' & dadoA_in(7 downto 1);

			--------------------------- M X N -------------------------------
			elsif  (sig_contador_result = 12) then

				sig_result <= sig_mult_result;

				-- FLAGS
				sig_flagO <= sig_mult_over;
				sig_flagC <= sig_mult_carry;

			--------------------------- PAR? -------------------------------
			elsif  (sig_contador_result = 13) then

				sig_result <= "0000000" & sig_paridade_result;

			------------------------ COMPLEMENTO 2 --------------------------
			elsif  (sig_contador_result = 14) then

				sig_result <= sig_complemento_result;

			--------------------------- INC -------------------------------
			elsif  (sig_contador_result = 15) then

				sig_result <= sig_incrementa_result;

				-- FLAGS
				sig_flagO <= sig_incrementa_over;
				sig_flagC <= sig_incrementa_carry;

			--------------------------- DEC -------------------------------
			elsif  (sig_contador_result = 0) then

				sig_result <= sig_decrementa_result;

				-- FLAGS
				sig_flagC <= sig_decrementa_borrow;


			--------------------------- ELSE -------------------------------
			else
				sig_flagC <= '0';
				sig_flagO <= '0';
				sig_flagZ <= '0';
				sig_flagN <= '0';
				sig_flagA <= '0';
				sig_flagP <= '0';
				sig_result <= (others => '0');
			end if;

		end if;
	end process;

	-- Direciona os sinais para os pinos de ligação com o display
	DA_out <= sig_contadorA;
	DB_out <= sig_contadorB;
	DC_out <= sig_contadorC;
	DD_out <= sig_contadorD;
	DE_out <= sig_contadorE;
	DF_out <= sig_contadorF;
	DG_out <= sig_contadorG;

	-- Direciona sinais para as respectivas saídas da ALU
	flagC_out <= not (sig_flagC);
	flagO_out <= not (sig_flagO);
	flagZ_out <= not (sig_zoncZ);
	flagN_out <= not (sig_zoncN);

	-- Direciona o resultado final para sua respectiva porta de saída
	result_out <= sig_result;

end chave_behav;
