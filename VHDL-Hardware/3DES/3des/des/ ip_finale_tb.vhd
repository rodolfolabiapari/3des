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

ENTITY initialPermutationFinale_tb IS
END initialPermutationFinale_tb;

ARCHITECTURE initialPermutationFinale_tb_behav OF initialPermutationFinale_tb IS

	-- Importação de componente
	COMPONENT initialPermutationFinale port(
		ipIn   : IN std_logic_vector(0 TO 63);
		ipOut  : OUT std_logic_vector(0 TO 63)
	);
	END COMPONENT;


	SIGNAL sig_ipIn   :std_logic_vector(0 TO 63);
	signal sig_ipOut  : std_logic_vector(0 TO 63);
BEGIN
	-- Mapeamento de portas
	UUT_ipf: initialPermutationFinale PORT MAP(
		ipIn  => sig_ipIn ,
		ipOut => sig_ipOut
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_ipIn <= "0000101001001100110110011001010101000011010000100011001000110100";
		wait for 5 ns;

	END PROCESS;

END ARCHITECTURE initialPermutationFinale_tb_behav;
