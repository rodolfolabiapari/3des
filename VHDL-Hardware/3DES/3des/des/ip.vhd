
-- Initial Permutation
-- Permutacao inicial (IP) de um texto (M) e' o primeiro passo pra encriptacao
-- e' permutado os bits de M de acordo com a tabelaa IP criando um bloco permutado
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity initialPermutation is
	port(
		-- Vetor M de entrada
		ipIn   : IN std_logic_vector(0 TO 63);
		-- Vetor IP de saida
		ipOut  : OUT std_logic_vector(0 TO 63)
	);
end initialPermutation;

architecture initialPermutation_behav of initialPermutation is
	-- Vetor buffer
	signal Buffer64 : std_logic_vector(0 TO 63);
BEGIN

	-- Permutacao
	Buffer64(00) <= ipIn(57);
	Buffer64(01) <= ipIn(49);
	Buffer64(02) <= ipIn(41);
	Buffer64(03) <= ipIn(33);
	Buffer64(04) <= ipIn(25);
	Buffer64(05) <= ipIn(17);
	Buffer64(06) <= ipIn(9);
	Buffer64(07) <= ipIn(1);--
	Buffer64(08) <= ipIn(59);
	Buffer64(09) <= ipIn(51);
	Buffer64(10) <= ipIn(43);
	Buffer64(11) <= ipIn(35);
	Buffer64(12) <= ipIn(27);
	Buffer64(13) <= ipIn(19);
	Buffer64(14) <= ipIn(11);
	Buffer64(15) <= ipIn(3);--
	Buffer64(16) <= ipIn(61);
	Buffer64(17) <= ipIn(53);
	Buffer64(18) <= ipIn(45);
	Buffer64(19) <= ipIn(37);
	Buffer64(20) <= ipIn(29);
	Buffer64(21) <= ipIn(21);
	Buffer64(22) <= ipIn(13);
	Buffer64(23) <= ipIn(5);--
	Buffer64(24) <= ipIn(63);
	Buffer64(25) <= ipIn(55);
	Buffer64(26) <= ipIn(47);
	Buffer64(27) <= ipIn(39);
	Buffer64(28) <= ipIn(31);
	Buffer64(29) <= ipIn(23);
	Buffer64(30) <= ipIn(15);
	Buffer64(31) <= ipIn(7);--
	Buffer64(32) <= ipIn(56);
	Buffer64(33) <= ipIn(48);
	Buffer64(34) <= ipIn(40);
	Buffer64(35) <= ipIn(32);
	Buffer64(36) <= ipIn(24);
	Buffer64(37) <= ipIn(16);
	Buffer64(38) <= ipIn(8);
	Buffer64(39) <= ipIn(0);--
	Buffer64(40) <= ipIn(58);
	Buffer64(41) <= ipIn(50);
	Buffer64(42) <= ipIn(42);
	Buffer64(43) <= ipIn(34);
	Buffer64(44) <= ipIn(26);
	Buffer64(45) <= ipIn(18);
	Buffer64(46) <= ipIn(10);
	Buffer64(47) <= ipIn(2);--
	Buffer64(48) <= ipIn(60);
	Buffer64(49) <= ipIn(52);
	Buffer64(50) <= ipIn(44);
	Buffer64(51) <= ipIn(36);
	Buffer64(52) <= ipIn(28);
	Buffer64(53) <= ipIn(20);
	Buffer64(54) <= ipIn(12);
	Buffer64(55) <= ipIn(4);--
	Buffer64(56) <= ipIn(62);
	Buffer64(57) <= ipIn(54);
	Buffer64(58) <= ipIn(46);
	Buffer64(59) <= ipIn(38);
	Buffer64(60) <= ipIn(30);
	Buffer64(61) <= ipIn(22);
	Buffer64(62) <= ipIn(14);
	Buffer64(63) <= ipIn(6);

	-- Direciona o buffer para a saida
	ipOut <= Buffer64;

end initialPermutation_behav;