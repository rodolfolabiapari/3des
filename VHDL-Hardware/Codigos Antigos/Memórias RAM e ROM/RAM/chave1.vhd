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
		clock				: in std_logic; -- Sinal de relógio para sincronização
		reset 			: in std_logic; -- Sinal de reset
		input 			: in std_logic;
		output			: out std_logic -- Carry Flag
		);
end chave;

-- Comportamento do componente
architecture chave_behav of chave is

	type state_type is (s0, s1, s2, s3, s4);
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

	-- SINAIS
	-- Declaração dos sinais de entrada e saída do componente

	-- RAM
	signal sig_ram_clock   : std_logic;
	signal sig_ram_we      : std_logic;
	signal sig_ram_address : std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
	signal sig_ram_datain  : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	signal sig_ram_dataout : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

begin
	-- Mapeamento de portas dos componentes

	-- Mapeamento de portas da Memória Ram
	map_Ram: ram port map (
		clock   => sig_ram_clock,
		we      => sig_ram_we,
		address => sig_ram_address,
		datain  => sig_ram_datain,
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

				sig_ram_we <= '1';                                             			 -- Inicializa seletor de opção, WE = 0, ou seja, desabilita escrita na memória
				sig_ram_address <= "000000000";                          		 -- Inicializa o barramento de endereço
				sig_ram_dataIn  <= "1111111111111111";

				next_state <= s1;
			when s1 =>

				sig_ram_we <= '1';                                             			 -- Inicializa seletor de opção, WE = 0, ou seja, desabilita escrita na memória
				sig_ram_address <= "000000001";                          		 -- Inicializa o barramento de endereço
				sig_ram_dataIn  <= "1111111111111110";

				next_state <= s2;
			when s2 =>

				sig_ram_we <= '0';
				sig_ram_address <= "000000000";

				next_state <= s3;
			when s3 =>

				sig_ram_we <= '0';
				sig_ram_address <= "000000001";

				next_state <= s4;

			when s4 =>
				sig_ram_we <= '0';
				sig_ram_address <= "000000001";

				next_state <= s4;
		end case;
	end process;


end chave_behav;
