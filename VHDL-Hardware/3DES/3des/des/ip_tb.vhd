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

ENTITY initialPermutation_tb IS
END initialPermutation_tb;

ARCHITECTURE initialPermutation_tb_behav OF initialPermutation_tb IS

	-- Importação de componente
	COMPONENT initialPermutation port(
		ipIn   : IN std_logic_vector(0 TO 63);
		ipOut  : OUT std_logic_vector(0 TO 63)
	);
	END COMPONENT;


	SIGNAL sig_ipIn   : std_logic_vector(0 TO 63);
	signal sig_ipOut  :  std_logic_vector(0 TO 63);
BEGIN
	-- Mapeamento de portas
	UUT_ip: initialPermutation PORT MAP(
		ipIn  => sig_ipIn ,
		ipOut => sig_ipOut
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_ipIn <= "0000000100100011010001010110011110001001101010111100110111101111";
		wait for 5 ns;

	END PROCESS;

END ARCHITECTURE initialPermutation_tb_behav;
