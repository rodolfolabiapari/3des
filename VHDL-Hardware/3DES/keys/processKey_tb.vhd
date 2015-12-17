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
		-- 16 chaves
		key0        : OUT std_logic_vector(0 TO 47);
		key1        : OUT std_logic_vector(0 TO 47);
		key2        : OUT std_logic_vector(0 TO 47);
		key3        : OUT std_logic_vector(0 TO 47);
		key4        : OUT std_logic_vector(0 TO 47);
		key5        : OUT std_logic_vector(0 TO 47);
		key6        : OUT std_logic_vector(0 TO 47);
		key7        : OUT std_logic_vector(0 TO 47);
		key8        : OUT std_logic_vector(0 TO 47);
		key9        : OUT std_logic_vector(0 TO 47);
		keya        : OUT std_logic_vector(0 TO 47);
		keyb        : OUT std_logic_vector(0 TO 47);
		keyc        : OUT std_logic_vector(0 TO 47);
		keyd        : OUT std_logic_vector(0 TO 47);
		keye        : OUT std_logic_vector(0 TO 47);
		keyf        : OUT std_logic_vector(0 TO 47) 
		);
	END COMPONENT;

	SIGNAL sig_bus64In 	   :  std_logic_vector(0 TO 63);
	signal sig_clk         : std_logic;
	signal sig_reset       : std_logic;
	signal sig_done        : std_logic;

	signal sig_key0        : std_logic_vector(0 to 47);
	signal sig_key1        : std_logic_vector(0 to 47);
	signal sig_key2        : std_logic_vector(0 to 47);
	signal sig_key3        : std_logic_vector(0 to 47);
	signal sig_key4        : std_logic_vector(0 to 47);
	signal sig_key5        : std_logic_vector(0 to 47);
	signal sig_key6        : std_logic_vector(0 to 47);
	signal sig_key7        : std_logic_vector(0 to 47);
	signal sig_key8        : std_logic_vector(0 to 47);
	signal sig_key9        : std_logic_vector(0 to 47);
	signal sig_keya        : std_logic_vector(0 to 47);
	signal sig_keyb        : std_logic_vector(0 to 47);
	signal sig_keyc        : std_logic_vector(0 to 47);
	signal sig_keyd        : std_logic_vector(0 to 47);
	signal sig_keye        : std_logic_vector(0 to 47);
	signal sig_keyf        : std_logic_vector(0 to 47);
BEGIN
	-- Mapeamento de portas
	UUT_pk: processKey PORT MAP(
		clk         => sig_clk,
		reset       => sig_reset,
		bus64In 	=> sig_bus64In,
		done        => sig_done,
		-- 16 chaves
		key0        => sig_key0,
		key1        => sig_key1,
		key2        => sig_key2,
		key3        => sig_key3,
		key4        => sig_key4,
		key5        => sig_key5,
		key6        => sig_key6,
		key7        => sig_key7,
		key8        => sig_key8,
		key9        => sig_key9,
		keya        => sig_keya,
		keyb        => sig_keyb,
		keyc        => sig_keyc,
		keyd        => sig_keyd,
		keye        => sig_keye,
		keyf        => sig_keyf
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
