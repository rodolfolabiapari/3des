LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;
USE IEEE.Numeric_std.all;

ENTITY sbox1_tb IS
END sbox1_tb;

ARCHITECTURE sinais OF sbox1_tb IS
	SIGNAL sig_clk : std_logic;
	SIGNAL sig_busIn6 : std_logic_vector(0 TO 5);
	SIGNAL sig_done : std_logic;
	signal sig_reset : std_logic;
	SIGNAL sig_busOut4 : std_logic_vector(0 TO 3);

	-- Importação de componente

	COMPONENT sbox1 port (
		clk 	: IN std_logic;
		reset : IN std_logic;
		busIn6 	: IN std_logic_vector(0 TO 5);
		done : OUT std_logic;
		busOut4 : OUT std_logic_vector(0 TO 3)
		);
	END COMPONENT;

BEGIN
	-- Mapeamento de portas
	UUT_sbox1: sbox1 PORT MAP(
		clk => sig_clk,
		reset => sig_reset,
		busIn6 => sig_busIn6,
		done => sig_done,
		busOut4 =>sig_busOut4
	);

	clk_process :process
	begin
		sig_clk <= '0';
		wait for 1 ns;  --for 0.5 ns signal is '0'.
		sig_clk <= '1';
		wait for 1 ns;  --for next 0.5 ns signal is '1'.
	end process;


	process_sbox1_tb: PROCESS IS 
	BEGIN                

		sig_busIn6 <= "011000";
		sig_reset <= '1';
		wait for 2 ns;
		sig_reset <= '0';
		wait for 40 ns;

--			sig_busIn6 <= "000000";                           
--
--			WHILE sig_busIn6 /= "111111" LOOP    
--
--				WAIT UNTIL rising_edge(sig_clk);                     	
--
--					if (sig_done = '1') then
--						sig_busIn6 <= std_logic_vector(unsigned(sig_busIn6) + 1);
--						sig_reset <= '1';
--					else 
--						sig_reset <= '0';      
--					end if;
--
--			END LOOP;


	END PROCESS process_sbox1_tb;

END ARCHITECTURE sinais;
