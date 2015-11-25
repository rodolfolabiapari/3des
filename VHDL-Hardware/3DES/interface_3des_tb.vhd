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

ENTITY interface_3des_tb IS
END interface_3des_tb;

ARCHITECTURE interface_3des_tb_behav OF interface_3des_tb IS

	-- Importação de componente
	COMPONENT interface_3des port (
		clock          : IN std_logic;
		barramentoIn   : in std_logic_vector(63 downto 0);
		inStable       : in std_logic;
		-- barramentoOut  : in std_logic_vector(63 downto 0);
		reset          : In std_logic;
		done           : OUT std_logic
		);
	END COMPONENT;

	signal sig_clock        : std_logic;
	signal sig_barramentoIn : std_logic_vector(63 downto 0);
	signal sig_inStable     : std_logic;
	signal sig_reset        : std_logic;
	signal sig_done         : std_logic;
BEGIN
	-- Mapeamento de portas
	UUT_interface_box: interface_3des PORT MAP(
		clock           => sig_clock       ,
		barramentoIn    => sig_barramentoIn,
		inStable        => sig_inStable    ,
		reset           => sig_reset       ,
		done            => sig_done        
	);

	processClk: Process 
	BEGIN
		sig_clock <= '0';
		wait for 1 ns;
		sig_clock <= '1';
		wait for 1 ns;
	END PROCESS;

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN
		--0123456789ABCDEF
		--key-133457799BBCDFF1

		sig_reset <= '1';
		sig_inStable <= '0';
		wait for 1 ns;

		-- Define tipo de operacao
		sig_reset <= '0';
		sig_barramentoIn <= x"0000000000000001";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;


		-- Define chave
		sig_barramentoIn <= x"1133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;

		-- Define chave
		sig_barramentoIn <= x"2133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;

		-- Define chave
		sig_barramentoIn <= x"3133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;
		

--		-- Define quantidade blocos
--		sig_barramentoIn <= x"0000000000000002";
--		sig_inStable <= '1';
--		wait for 2 ns;
--
--		sig_inStable <= '0';
--		wait for 2 ns;




		wait for 2 ms;
	END PROCESS;

END ARCHITECTURE interface_3des_tb_behav;