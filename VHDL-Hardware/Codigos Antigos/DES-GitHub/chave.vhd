-- Importa Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTIDADE do hardware de tratamento da chave
entity chave is
	-- Variáveis globais
	generic (
		ADDRESS_WIDTH	: integer := 9;
		DATA_WIDTH		: integer := 16
	);
	port(
		clock			: in std_logic; -- Sinal de relógio para sincronização
		reset 			: in std_logic; -- Sinal de reset
		start 			: in std_logic; -- Sinal que indica o início do processamento
		key 			: in std_logic_vector( 15 downto 0); -- Barramento do sinal de entrada
		busy			: out std_logic -- Sinal que indica para o mundo externo que o hardware está ocupado
		);
end chave;

-- ARQUITETURA do hardware de tratamento da chave
architecture chave_behav of chave is

	-- ESTADOS
	type state_type is (s0, s1, s2, s3, s4);
	signal current_state, next_state: state_type;

	-- COMPONENTES
	-- Declaração de todos os sinais de entrada e saída do componente a ser adicionado
	component ram port (
		clock		: in  std_logic; -- Sinal de relógio para sincronização
		writeData	: in  std_logic; -- Comutador de escrita e leitura na memória RAM
		address	 	: in  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0); -- Endereço onde será acessado na memória tanto para escrita quanto para leitura
		datain		: in  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0); -- Dado de entrada para ser gravado na memória
		dataout 	: out std_logic_vector(DATA_WIDTH - 1 DOWNTO 0) -- Dado de saída para a leitura
	);
	end component;

	-- SINAIS
	-- Declaração dos sinais de entrada e saída do componente

	-- RAM
	signal sig_ram_clock	: std_logic;
	signal sig_ram_writeData: std_logic;
	signal sig_ram_address 	: std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
	signal sig_ram_datain  	: std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	signal sig_ram_dataout 	: std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

begin
	-- MAPEAMENTO PORTAS

	-- Mapeamento de portas da Memória Ram
	map_Ram: ram port map (
		clock 		=> sig_ram_clock,
		writeData	=> sig_ram_writeData,
		address		=> sig_ram_address,
		datain		=> sig_ram_datain,
		dataout		=> sig_ram_dataout
	);


	-- Processo responsável por inciar corretamente a máquina de estado e gerenciar o seu estado reset
	process (clock, reset)
	begin
		if (reset='1') then
			-- Estado Inicial
			current_state <= s0;
			busy <= '1';
		elsif (rising_edge(clock)) then
			-- Avança o estado
			current_state <= next_state;
		end if;
	end process;


	-- Máquina de estado de processamento da chave
	process (current_state, start)
	begin
		case current_state is
			when s0 =>

				sig_ram_writeData <= '1';                                             			 -- Inicializa seletor de opção, WE = 0, ou seja, desabilita escrita na memória
				sig_ram_address <= "000000000";                          		 -- Inicializa o barramento de endereço
				sig_ram_dataIn  <= "1111111111111111";

				next_state <= s1;
			when s1 =>

				sig_ram_writeData <= '1';                                          			 -- Inicializa seletor de opção, WE = 0, ou seja, desabilita escrita na memória
				sig_ram_address <= "000000001";                          		 -- Inicializa o barramento de endereço
				sig_ram_dataIn  <= "1111111111111110";

				next_state <= s2;
			when s2 =>

				sig_ram_writeData <= '0';
				sig_ram_address <= "000000000";

				next_state <= s3;
			when s3 =>

				sig_ram_writeData <= '0';
				sig_ram_address <= "000000001";

				next_state <= s4;

			when s4 =>
				sig_ram_writeData <= '0';
				sig_ram_address <= "000000001";

				next_state <= s4;

				busy <= '0'
		end case;
	end process;


end chave_behav;
