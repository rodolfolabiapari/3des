-- Importa Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTIDADE do hardware de criptografia DES
entity DES is
	port (
		-- Sinal de Relógio do hardware
		clock : in std_logic;
		-- Sinal de Reset do hardware
		reset : in std_logic;
		-- Barramento de entrada da chave para o hardware
		key_input : in std_logic_vector (15 downto 0)
	);

end DES;


-- ARQUITETURA do hardware de criptografia DES
architecture DES_behav of DES is

	-- ESTADOS
	--type state_type is (s0, s1, s2, s3, s4);
	--signal current_state, next_state: state_type;


	-- COMPONENTES
	-- Declaração de todos os sinais de entrada e saída do componente a ser adicionado
	component chave port (
		clock			: in std_logic; -- Sinal de relógio para sincronização
		reset 			: in std_logic; -- Sinal de reset
		start 			: in std_logic; -- Sinal que indica o início do processamento
		key 			: in std_logic_vector( 15 downto 0); -- Barramento do sinal de entrada
		busy			: out std_logic -- Sinal que indica para o mundo externo que o hardware está ocupado
	);
	end component;


	-- SINAIS
	-- Declaração dos sinais de entrada e saída do componente

	-- Chave
	signal sig_clock			: std_logic; -- Sinal de relógio para sincronização
	signal sig_reset 			: std_logic; -- Sinal de reset
	signal sig_start 			: std_logic; -- Sinal que indica o início do processamento
	signal sig_key				: std_logic_vector( 15 downto 0); -- Barramento do sinal de entrada
	signal sig_busy				: std_logic; -- Sinal que indica para o mundo externo que o hardware está ocupado

begin
	-- MAPEAMENTO PORTAS



	sig_start <= '1';
	sig_key <= "0101010101010101";

	-- Mapeamento de portas do procedimento responsável por gerenciar a chave.
	geracaoChave: chave port map (
		clock => clock,
		reset => reset,
		start => sig_start,
		key => sig_key,
		busy => sig_sigbusy
	);

end DES_behav;
