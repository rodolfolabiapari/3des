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

ENTITY processKey_tb IS
END processKey_tb;

ARCHITECTURE processKey_tb_behav OF processKey_tb IS

	-- Importação de componente
	COMPONENT processKey port (
		clk         : IN std_logic;
		reset       : IN std_logic;
		bus64In 	: IN std_logic_vector(0 TO 63);
		done        : OUT std_logic;
		bus48Out    : OUT std_logic_vector(0 TO 47)
		);
	END COMPONENT;

	SIGNAL sig_bus64In 	   :  std_logic_vector(0 TO 63);
	SIGNAL sig_bus48Out    :  std_logic_vector(0 TO 47);
	signal sig_clk         : std_logic;
	signal sig_reset       : std_logic;
	signal sig_done        : std_logic;
BEGIN
	-- Mapeamento de portas
	UUT_pc1: processKey PORT MAP(
		clk         => sig_clk,
		reset       => sig_reset,
		bus64In 	=> sig_bus64In,
		done        => sig_done,
		bus48Out    => sig_bus48Out
	);

	processClk: Process 
	BEGIN
		sig_clk <= '0';
		wait for 1 ns;
		sig_clk <= '1';
		wait for 1 ns;
	END PROCESS;

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		--sig_bus64In <= x"133457799BBCDFF1";
		sig_bus64In <= x"133457799BBCDFF1";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 60000 ns;

	END PROCESS;

END ARCHITECTURE processKey_tb_behav;
