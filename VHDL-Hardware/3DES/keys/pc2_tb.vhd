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

ENTITY pc2_tb IS
END pc2_tb;

ARCHITECTURE pc2_behav OF pc2_tb IS

	-- Importação de componente
	COMPONENT permutedChoice2 port (
		-- entrada da chave
		bus56In 	: IN std_logic_vector(0 TO 55);
		-- chave operada
		bus48Out    : OUT std_logic_vector(0 TO 47)
		);
	END COMPONENT;

	SIGNAL sig_bus56In 	   :  std_logic_vector(0 TO 55);
	SIGNAL sig_bus48Out    :  std_logic_vector(0 TO 47);
BEGIN
	-- Mapeamento de portas
	UUT_pc2: permutedChoice2 PORT MAP(
		bus56In  => sig_bus56In,
		bus48Out => sig_bus48Out
	);

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN

		sig_bus56In <= "11100001100110010101010111111010101011001100111100011110";
		wait for 5 ns;	

	END PROCESS;




--	process_sbox_tb: PROCESS IS 
--	BEGIN                
--
--			sig_bus48In <= x"000000000000";
--
--			WHILE sig_bus48In /= x"111111111111" LOOP    
--
--				WAIT UNTIL rising_edge(sig_clk);                     	
--
--					if (sig_done = '1') then
--						sig_bus48In <= std_logic_vector(unsigned(sig_bus48In) + 1);
--						sig_reset <= '1';
--					else 
--						sig_reset <= '0';      
--					end if;
--
--			END LOOP;
--			
--	END PROCESS process_sbox_tb;

END ARCHITECTURE pc2_behav;
