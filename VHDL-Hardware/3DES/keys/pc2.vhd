
-- Permuted Choise 2
-- Permutacao que ocorre antes do envio da chave para operacao com o texto
-- Esta permutacao nao e' a permutacao inicial das chave
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity permutedChoice2 is
	port(
		-- entrada da chave
		bus56In 	: IN std_logic_vector(0 TO 55);
		-- chave operada
		bus48Out    : OUT std_logic_vector(0 TO 47)
	);
end permutedChoice2;

architecture permutedChoice2_behav of permutedChoice2 is

	-- buffer de operacao
	signal busBuffer48 : std_logic_vector(0 TO 47);
BEGIN
	-- permutacoes
	busBuffer48(00) <= bus56In(13);
	busBuffer48(01) <= bus56In(16);
	busBuffer48(02) <= bus56In(10);
	busBuffer48(03) <= bus56In(23);
	busBuffer48(04) <= bus56In(00);
	busBuffer48(05) <= bus56In(04);--

	busBuffer48(06) <= bus56In(02);
	busBuffer48(07) <= bus56In(27);
	busBuffer48(08) <= bus56In(14);
	busBuffer48(09) <= bus56In(05);
	busBuffer48(10) <= bus56In(20);
	busBuffer48(11) <= bus56In(09);--

	busBuffer48(12) <= bus56In(22);
	busBuffer48(13) <= bus56In(18);
	busBuffer48(14) <= bus56In(11);
	busBuffer48(15) <= bus56In(03);
	busBuffer48(16) <= bus56In(25);
	busBuffer48(17) <= bus56In(07);

	busBuffer48(18) <= bus56In(15);
	busBuffer48(19) <= bus56In(06);
	busBuffer48(20) <= bus56In(26);
	busBuffer48(21) <= bus56In(19);
	busBuffer48(22) <= bus56In(12);
	busBuffer48(23) <= bus56In(01);

	busBuffer48(24) <= bus56In(40);
	busBuffer48(25) <= bus56In(51);
	busBuffer48(26) <= bus56In(30);
	busBuffer48(27) <= bus56In(36);
	busBuffer48(28) <= bus56In(46);
	busBuffer48(29) <= bus56In(54);

	busBuffer48(30) <= bus56In(29);
	busBuffer48(31) <= bus56In(39);
	busBuffer48(32) <= bus56In(50);
	busBuffer48(33) <= bus56In(44);
	busBuffer48(34) <= bus56In(32);
	busBuffer48(35) <= bus56In(47);

	busBuffer48(36) <= bus56In(43);
	busBuffer48(37) <= bus56In(48);
	busBuffer48(38) <= bus56In(38);
	busBuffer48(39) <= bus56In(55);
	busBuffer48(40) <= bus56In(33);
	busBuffer48(41) <= bus56In(52);
	
	busBuffer48(42) <= bus56In(45);
	busBuffer48(43) <= bus56In(41);
	busBuffer48(44) <= bus56In(49);
	busBuffer48(45) <= bus56In(35);
	busBuffer48(46) <= bus56In(28);
	busBuffer48(47) <= bus56In(31);

	-- retorna o buffer permutado
	bus48Out <= busBuffer48;

end permutedChoice2_behav;

