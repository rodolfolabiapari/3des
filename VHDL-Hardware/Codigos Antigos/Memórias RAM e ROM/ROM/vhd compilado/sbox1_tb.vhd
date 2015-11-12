LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;

ENTITY sbox1_tb IS
END sbox1_tb;

ARCHITECTURE sinais OF sbox1_tb IS
	SIGNAL sig_clk : std_logic;
	SIGNAL sig_address16 : std_logic_vector(3 DOWNTO 0);
	SIGNAL sig_address4 : std_logic_vector(1 DOWNTO 0);
	SIGNAL sig_data_out : std_logic_vector(3 DOWNTO 0);

	-- Importação de componente

	COMPONENT sbox1 port (
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
		data_out : OUT std_logic_vector(3 DOWNTO 0));
	END COMPONENT;

BEGIN
	-- Mapeamento de portas
	UUT_entity_rom1: sbox1 PORT MAP(
		clk => sig_clk,
		address16 => sig_address16,
		address4 => sig_address4,
		data_out => sig_data_out
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN
		sig_clk <= '0'; WAIT FOR 50 ns;
		sig_address16 <= "0000";
		sig_address4 <= "00";
		sig_clk <= '0'; WAIT FOR 50 ns;

		sig_clk <= '0'; WAIT FOR 50 ns;
		sig_address16 <= "0001";
		sig_address4 <= "00";
		sig_clk <= '0'; WAIT FOR 50 ns;


		sig_clk <= '0'; WAIT FOR 50 ns;
		sig_address16 <= "0010";
		sig_address4 <= "00";
		sig_clk <= '0'; WAIT FOR 50 ns;
	END PROCESS;

END ARCHITECTURE sinais;
