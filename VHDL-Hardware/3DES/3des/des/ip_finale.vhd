library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity initialPermutationFinale is
	port(
		ipIn   : IN std_logic_vector(0 TO 63);
		ipOut  : OUT std_logic_vector(0 TO 63)
	);
end initialPermutationFinale;

architecture initialPermutationFinale_behav of initialPermutationFinale is

	signal Buffer64 : std_logic_vector(0 TO 63);
BEGIN

	Buffer64(00) <= ipIn(39);
	Buffer64(01) <= ipIn(07);
	Buffer64(02) <= ipIn(47);
	Buffer64(03) <= ipIn(15);
	Buffer64(04) <= ipIn(55);
	Buffer64(05) <= ipIn(23);
	Buffer64(06) <= ipIn(63);
	Buffer64(07) <= ipIn(31);

	Buffer64(08) <= ipIn(38);
	Buffer64(09) <= ipIn(06);
	Buffer64(10) <= ipIn(46);
	Buffer64(11) <= ipIn(14);
	Buffer64(12) <= ipIn(54);
	Buffer64(13) <= ipIn(22);
	Buffer64(14) <= ipIn(62);
	Buffer64(15) <= ipIn(30);

	Buffer64(16) <= ipIn(37);
	Buffer64(17) <= ipIn(05);
	Buffer64(18) <= ipIn(45);
	Buffer64(19) <= ipIn(13);
	Buffer64(20) <= ipIn(53);
	Buffer64(21) <= ipIn(21);
	Buffer64(22) <= ipIn(61);
	Buffer64(23) <= ipIn(29);

	Buffer64(24) <= ipIn(36);
	Buffer64(25) <= ipIn(04);
	Buffer64(26) <= ipIn(44);
	Buffer64(27) <= ipIn(12);
	Buffer64(28) <= ipIn(52);
	Buffer64(29) <= ipIn(20);
	Buffer64(30) <= ipIn(60);
	Buffer64(31) <= ipIn(28);

	Buffer64(32) <= ipIn(35);
	Buffer64(33) <= ipIn(03);
	Buffer64(34) <= ipIn(43);
	Buffer64(35) <= ipIn(11);
	Buffer64(36) <= ipIn(51);
	Buffer64(37) <= ipIn(19);
	Buffer64(38) <= ipIn(59);
	Buffer64(39) <= ipIn(27);

	Buffer64(40) <= ipIn(34);
	Buffer64(41) <= ipIn(02);
	Buffer64(42) <= ipIn(42);
	Buffer64(43) <= ipIn(10);
	Buffer64(44) <= ipIn(50);
	Buffer64(45) <= ipIn(18);
	Buffer64(46) <= ipIn(58);
	Buffer64(47) <= ipIn(26);

	Buffer64(48) <= ipIn(33);
	Buffer64(49) <= ipIn(01);
	Buffer64(50) <= ipIn(41);
	Buffer64(51) <= ipIn(09);
	Buffer64(52) <= ipIn(49);
	Buffer64(53) <= ipIn(17);
	Buffer64(54) <= ipIn(57);
	Buffer64(55) <= ipIn(25);

	Buffer64(56) <= ipIn(32);
	Buffer64(57) <= ipIn(00);
	Buffer64(58) <= ipIn(40);
	Buffer64(59) <= ipIn(08);
	Buffer64(60) <= ipIn(48);
	Buffer64(61) <= ipIn(16);
	Buffer64(62) <= ipIn(56);
	Buffer64(63) <= ipIn(24);
	ipOut <= Buffer64;

end initialPermutationFinale_behav;