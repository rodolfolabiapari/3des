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

ENTITY t_un_des_tb IS
END t_un_des_tb;

ARCHITECTURE t_un_des_tb_behav OF t_un_des_tb IS

	-- Importação de componente
	COMPONENT t_un_des port (
		clock          : IN std_logic;
		reset          : In std_logic;
		text64         : IN std_logic_vector(0 TO 63);
		key192         : IN std_logic_vector(0 TO 191);
		done           : OUT std_logic;
		textOut64      : OUT std_logic_vector(0 TO 63)
		);
	END COMPONENT;

	signal sig_clock        : std_logic;
	signal sig_reset        : std_logic;
	signal sig_text64       : std_logic_vector(0 TO 63);
	signal sig_key          : std_logic_vector(0 TO 63);
	signal sig_done         : std_logic;
	signal sig_textOut64    : std_logic_vector(0 TO 63);
BEGIN
	-- Mapeamento de portas
	UUT_un_des_box: t_un_des PORT MAP(
		clock     => sig_clock    ,
		reset     => sig_reset    ,
		text64    => x"22FD4264516A6E36"   ,
		key192    => x"133457799BBCDFF1133457799BBCDFF1133457799BBCDFF1",
		done      => sig_done     ,
		textOut64 => sig_textOut64
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
		wait for 2 ns;
		sig_reset <= '0';
		wait for 600000 ns;

	END PROCESS;

END ARCHITECTURE t_un_des_tb_behav;