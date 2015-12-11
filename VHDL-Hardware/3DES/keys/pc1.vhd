
-- Permuted Choise 1
-- Permutacao que ocorre no recebimento da chave.
-- Esta permutacao nao e' a permutacao 2 das chave
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity permutedChoice1 is
	port(
		-- Chave inicial
		bus64In 	: IN std_logic_vector(0 TO 63);
		-- Chave operada
		bus56Out    : OUT std_logic_vector(0 TO 55)
	);
end permutedChoice1;

architecture permutedChoice1_behav of permutedChoice1 is
	-- buffer para permutacao
	signal busBuffer56 : std_logic_vector(0 TO 55);
BEGIN
	-- permutacoes
	busBuffer56(00) <= bus64In(56);
	busBuffer56(01) <= bus64In(48);
	busBuffer56(02) <= bus64In(40);
	busBuffer56(03) <= bus64In(32);
	busBuffer56(04) <= bus64In(24);
	busBuffer56(05) <= bus64In(16);
	busBuffer56(06) <= bus64In(8);--
	busBuffer56(07) <= bus64In(0);
	busBuffer56(08) <= bus64In(57);
	busBuffer56(09) <= bus64In(49);
	busBuffer56(10) <= bus64In(41);
	busBuffer56(11) <= bus64In(33);
	busBuffer56(12) <= bus64In(25);
	busBuffer56(13) <= bus64In(17);--
	busBuffer56(14) <= bus64In(9);
	busBuffer56(15) <= bus64In(1);
	busBuffer56(16) <= bus64In(58);
	busBuffer56(17) <= bus64In(50);
	busBuffer56(18) <= bus64In(42);
	busBuffer56(19) <= bus64In(34);
	busBuffer56(20) <= bus64In(26);--
	busBuffer56(21) <= bus64In(18);
	busBuffer56(22) <= bus64In(10);
	busBuffer56(23) <= bus64In(2);
	busBuffer56(24) <= bus64In(59);
	busBuffer56(25) <= bus64In(51);
	busBuffer56(26) <= bus64In(43);
	busBuffer56(27) <= bus64In(35);--
	busBuffer56(28) <= bus64In(62);
	busBuffer56(29) <= bus64In(54);
	busBuffer56(30) <= bus64In(46);
	busBuffer56(31) <= bus64In(38);
	busBuffer56(32) <= bus64In(30);
	busBuffer56(33) <= bus64In(22);
	busBuffer56(34) <= bus64In(14);--
	busBuffer56(35) <= bus64In(6);
	busBuffer56(36) <= bus64In(61);
	busBuffer56(37) <= bus64In(53);
	busBuffer56(38) <= bus64In(45);
	busBuffer56(39) <= bus64In(37);
	busBuffer56(40) <= bus64In(29);
	busBuffer56(41) <= bus64In(21);--
	busBuffer56(42) <= bus64In(13);
	busBuffer56(43) <= bus64In(5);
	busBuffer56(44) <= bus64In(60);
	busBuffer56(45) <= bus64In(52);
	busBuffer56(46) <= bus64In(44);
	busBuffer56(47) <= bus64In(36);
	busBuffer56(48) <= bus64In(28);--
	busBuffer56(49) <= bus64In(20);
	busBuffer56(50) <= bus64In(12);
	busBuffer56(51) <= bus64In(4);
	busBuffer56(52) <= bus64In(27);
	busBuffer56(53) <= bus64In(19);
	busBuffer56(54) <= bus64In(11);
	busBuffer56(55) <= bus64In(3);

	-- retorna o buffer
	bus56Out <= busBuffer56;

end permutedChoice1_behav;
