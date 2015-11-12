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

ENTITY sbox_tb IS
END sbox_tb;

ARCHITECTURE sinais OF sbox_tb IS

	-- Importação de componente
	COMPONENT sbox port (
		clk 		: IN std_logic;
		reset 	: IN std_logic;
		bus48In 	: IN std_logic_vector(0 TO 47);
		bus32Out : OUT std_logic_vector(0 TO 31);
		done 		: OUT std_logic
		);
	END COMPONENT;

	SIGNAL sig_clk : std_logic;
	signal sig_reset : std_logic;
	SIGNAL sig_bus48In : std_logic_vector(0 TO 47);
	SIGNAL sig_bus32Out : std_logic_vector(0 TO 31);
	SIGNAL sig_done : std_logic;
BEGIN
	-- Mapeamento de portas
	UUT_sbox: sbox PORT MAP(
		clk => sig_clk,
		reset => sig_reset,
		bus48In => sig_bus48In,
		bus32Out =>sig_bus32Out,
		done => sig_done
	);

	clk_process :process
	begin
		sig_clk <= '0';
		wait for 1 ns;  --for 0.2 ns signal is '0'.
		sig_clk <= '1';
		wait for 1 ns;  --for next 0.2 ns signal is '1'.
	end process;


	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN
		--if sig_done = '1' then
			--sig_busIn6 := sig_busIn6 + '1';


		sig_bus48In <= x"000000000000";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"000000000001";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"100000000000";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"100000000001";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;


		sig_bus48In <= x"000000000010";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"000000000011";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"100000000010";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

		sig_bus48In <= x"100000000011";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

	END PROCESS;

END ARCHITECTURE sinais;
