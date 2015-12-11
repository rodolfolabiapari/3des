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

ENTITY p_box_tb IS
END p_box_tb;

ARCHITECTURE p_box_tb_behav OF p_box_tb IS

	-- Importação de componente
	COMPONENT p_box port(
		bus32In 	: IN std_logic_vector(0 TO 31);
		bus32Out    : OUT std_logic_vector(0 TO 31)
	);
	END COMPONENT;


	SIGNAL sig_bus32In 	   :  std_logic_vector(0 TO 31);
	SIGNAL sig_bus32Out    :  std_logic_vector(0 TO 31);
BEGIN
	-- Mapeamento de portas
	UUT_p_box: p_box PORT MAP(
		bus32In  => sig_bus32In,
		bus32Out => sig_bus32Out
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_bus32In <= "01011100100000101011010110010111";
		wait for 5 ns;

	END PROCESS;

END ARCHITECTURE p_box_tb_behav;
