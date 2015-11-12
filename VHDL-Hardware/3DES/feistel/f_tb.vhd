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

ENTITY f_tb IS
END f_tb;

ARCHITECTURE f_tb_behav OF f_tb IS

	-- Importação de componente
	COMPONENT f port (
		clk          : IN std_logic;
		reset        : In std_logic;
		halfBlock    : IN std_logic_vector(0 TO 31);
		key          : IN std_logic_vector(0 TO 47);
		done         : OUT std_logic;
		busFinaleOut : OUT std_logic_vector(0 TO 31)
		);
	END COMPONENT;

	signal sig_clk          : std_logic;
	signal sig_reset        : std_logic;
	signal sig_halfBlock    : std_logic_vector(0 TO 31);
	signal sig_key          : std_logic_vector(0 TO 47);
	signal sig_done         : std_logic;
	signal sig_busFinaleOut : std_logic_vector(0 TO 31);
BEGIN
	-- Mapeamento de portas
	UUT_f_box: f PORT MAP(
		clk          => sig_clk,
		reset        => sig_reset,
		halfBlock    => sig_halfBlock,
		key          => sig_key,
		done         => sig_done,
		busFinaleOut => sig_busFinaleOut
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
		--0123456789ABCDEF
		--key-133457799BBCDFF1

		--sig_bus64In <= x"133457799BBCDFF1";
		sig_halfBlock <= "11110000101010101111000010101010";
		sig_key <= "000110110000001011101111111111000111000001110010";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 60000 ns;

	END PROCESS;

END ARCHITECTURE f_tb_behav;