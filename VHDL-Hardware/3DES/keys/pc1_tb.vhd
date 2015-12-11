LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.std_logic_textio.all;
use IEEE.numeric_bit.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;
use IEEE.math_complex.all;

ENTITY pc1_tb IS
END pc1_tb;

ARCHITECTURE pc1_behav OF pc1_tb IS

	-- Importação de componente
	COMPONENT permutedChoice1 port (
		bus64In 	: IN std_logic_vector(0 TO 63);
		bus56Out    : OUT std_logic_vector(0 TO 55)
		);
	END COMPONENT;

	SIGNAL sig_bus64In 	   :  std_logic_vector(0 TO 63);
	SIGNAL sig_bus56Out    :  std_logic_vector(0 TO 55);
BEGIN
	-- Mapeamento de portas
	UUT_pc1: permutedChoice1 PORT MAP(
		bus64In  => sig_bus64In,
		bus56Out => sig_bus56Out
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_bus64In <= x"133457799BBCDFF1";
		wait for 5 ns;

	END PROCESS;

END ARCHITECTURE pc1_behav;
