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

ENTITY e_tb IS
END e_tb;

ARCHITECTURE e_tb_behav OF e_tb IS

	-- Importação de componente
	COMPONENT expansion port(
		bus32In 	: IN std_logic_vector(0 TO 31);
		bus48Out    : OUT std_logic_vector(0 TO 47)
	);
	END COMPONENT;


	SIGNAL sig_bus32In 	   :  std_logic_vector(0 TO 31);
	SIGNAL sig_bus48Out    :  std_logic_vector(0 TO 47);
BEGIN
	-- Mapeamento de portas
	UUT_e: expansion PORT MAP(
		bus32In  => sig_bus32In,
		bus48Out => sig_bus48Out
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_bus32In <= "11110000101010101111000010101010";
		wait for 5 ns;

	END PROCESS;

END ARCHITECTURE e_tb_behav;
