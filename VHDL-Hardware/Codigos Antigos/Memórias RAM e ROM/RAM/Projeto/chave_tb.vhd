-- Test Bench para memória RAM

LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;
USE IEEE.Numeric_std.all;

ENTITY chave_tb IS
END ENTITY chave_tb;

ARCHITECTURE sinais OF chave_tb IS

	-- Sinais internos
	signal sig_clock			:  std_logic; -- Sinal de relógio para sincronização
	signal sig_reset 			:  std_logic; -- Sinal de reset
	signal sig_input 			:  std_logic;
	signal sig_output			:  std_logic; -- Carry Flag
	signal sig_state			:  std_logic; -- Carry Flag

	COMPONENT chave                                                  -- Importação do componente RAM já construido
		PORT
		(
			clock				: in std_logic; -- Sinal de relógio para sincronização
			reset 			: in std_logic; -- Sinal de reset
			input 			: in std_logic;
			output			: out std_logic -- Carry Flag
		);
	END COMPONENT;


BEGIN

	-- Mapeamento de portas do componente RAM com sinais do Test Bench
	UUT_chave: chave PORT MAP
	(
		clock => sig_clock,
		reset => sig_reset,
		input => sig_input,
		output => sig_output
	);

	P_clockGen: PROCESS IS                                        				 -- Controle de Clock
	BEGIN

		sig_clock <= '0';                                      					 -- Clock em nível baixo por 10 ns
		WAIT FOR 10 ns;
		sig_clock <= '1';                                     					 -- Clock em nível alto por 10 ns
		WAIT FOR 10 ns;

	END PROCESS P_clockGen;                                        				 -- Fim do controle de clock

	sig_state <= current_state;
	
END ARCHITECTURE sinais;
