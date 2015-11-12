-- Importa Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaração do componente
entity chave is
	generic (
		ADDRESS_WIDTH	: integer := 9; -- 65536 endereços
		DATA_WIDTH		: integer := 64
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

	type state_type is (s_leituraDaChave, s_permutacaoInicial, s_rotacao, s_permutacao);
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

	-- Sinais Internos
	signal barramento64Chave : std_logic_vector(DATA_WIDTH - 1 downto 0);
	signal barramento56Chave : std_logic_vector(DATA_WIDTH - 1 - 8 downto 0);
	signal barramentoC : std_logic_vector(23 downto 0);
	signal barramentoD : std_logic_vector(23 downto 0);

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
			current_state <= s_leituraDaChave;
		elsif (rising_edge(clock)) then
			-- Avança o estado
			current_state <= next_state;
		end if;
	end process;


	-- Máquina de estado
	process (current_state, input)
	variable iteracao : integer range 0 to 15;
	variable confirmaRam :
	begin
		case current_state is
			when s_leituraDaChave => -- Inicializa as variáveis

				-- Inicia uma gravação habilitando a escrita na memória RAM
				sig_ram_we <= '1';
				-- Indica qual endereço será gravado um dado
				sig_ram_address <= "000000000";
				-- Envia o dado para a memória
				sig_ram_dataIn  <= x"0000000000000000";

				-- Elimina qualquer ruido no barramento colocando 0 em todo barramento
				barramento64Chave <= x"0000000000000000";
				-- Variável que indica qual iteração está sendo realizada
				iteracao := 0;


				------------------------------------------------------------------------


				-- Passa para o próximo estado
				next_state <= s_permutacaoInicial;


			-- Realiza a permutação inicial eliminandos os 8 bits inválidos
			when s_permutacaoInicial =>

				-- Habilita a memória para leitura para que seja realizado a leitura da chave e assim realizar a permutação
				sig_ram_we <= '0';
				-- Indica o endereço one a chave inicial está armazenada
				sig_ram_address <= "000000000"


				------------------------------------------------------------------------


				-- Recebe o valor da Memória RAM
				barramento64Chave <= sig_ram_dataout;

				-- Realiza a primeira permutação eliminando cada oitavo bit que são considerados inválidos
				barramento56Chave <=
barramento64Chave(57-1) & barramento64Chave(49-1) & barramento64Chave(41-1) & barramento64Chave(33-1) & barramento64Chave(25-1) & barramento64Chave(17-1) & barramento64Chave(09-1) & barramento64Chave(
barramento64Chave(01-1) & barramento64Chave(58-1) & barramento64Chave(50-1) & barramento64Chave(42-1) & barramento64Chave(34-1) & barramento64Chave(26-1) & barramento64Chave(18-1) & barramento64Chave(
barramento64Chave(10-1) & barramento64Chave(02-1) & barramento64Chave(59-1) & barramento64Chave(51-1) & barramento64Chave(43-1) & barramento64Chave(35-1) & barramento64Chave(27-1) & barramento64Chave(
barramento64Chave(19-1) & barramento64Chave(11-1) & barramento64Chave(03-1) & barramento64Chave(60-1) & barramento64Chave(52-1) & barramento64Chave(44-1) & barramento64Chave(36-1) & barramento64Chave(
barramento64Chave(63-1) & barramento64Chave(55-1) & barramento64Chave(47-1) & barramento64Chave(39-1) & barramento64Chave(31-1) & barramento64Chave(23-1) & barramento64Chave(15-1) & barramento64Chave(
barramento64Chave(07-1) & barramento64Chave(62-1) & barramento64Chave(54-1) & barramento64Chave(46-1) & barramento64Chave(38-1) & barramento64Chave(30-1) & barramento64Chave(22-1) & barramento64Chave(
barramento64Chave(14-1) & barramento64Chave(06-1) & barramento64Chave(61-1) & barramento64Chave(53-1) & barramento64Chave(45-1) & barramento64Chave(37-1) & barramento64Chave(29-1) & barramento64Chave(
barramento64Chave(21-1) & barramento64Chave(13-1) & barramento64Chave(05-1) & barramento64Chave(28-1) & barramento64Chave(20-1) & barramento64Chave(12-1) & barramento64Chave(04-1);


				------------------------------------------------------------------------


				-- Após permutado o barramento, realiza a divisão deste separando em duas partes iguais.
				barramentoC <= barramento56Chave(53 downto 24);
				barramentoD <= barramento56Chave(23 downto 0);

				-- Passa para o próximo estado
				next_state <= s_rotacao;


			-- Realiza todas as rotações que são necessárias guardando os devidos valores na memória RAM a partir do endereço 01.
			when s_rotacao =>

				barramento64Chave

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
