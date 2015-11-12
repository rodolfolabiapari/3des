library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity expansion is
	port(
		bus32In 	: IN std_logic_vector(0 TO 31);
		bus48Out    : OUT std_logic_vector(0 TO 47)
	);
end expansion;

architecture expansion_behav of expansion is

	signal busBuffer48 : std_logic_vector(0 TO 47);
BEGIN
	busBuffer48(00) <= bus32In(31);
	busBuffer48(01) <= bus32In(00);
	busBuffer48(02) <= bus32In(01);
	busBuffer48(03) <= bus32In(02);
	busBuffer48(04) <= bus32In(03);
	busBuffer48(05) <= bus32In(04);
	busBuffer48(06) <= bus32In(03);--
	busBuffer48(07) <= bus32In(04);
	busBuffer48(08) <= bus32In(05);
	busBuffer48(09) <= bus32In(06);
	busBuffer48(10) <= bus32In(07);
	busBuffer48(11) <= bus32In(08);
	busBuffer48(12) <= bus32In(07);
	busBuffer48(13) <= bus32In(08);--
	busBuffer48(14) <= bus32In(09);
	busBuffer48(15) <= bus32In(10);
	busBuffer48(16) <= bus32In(11);
	busBuffer48(17) <= bus32In(12);
	busBuffer48(18) <= bus32In(11);
	busBuffer48(19) <= bus32In(12);
	busBuffer48(20) <= bus32In(13);--
	busBuffer48(21) <= bus32In(14);
	busBuffer48(22) <= bus32In(15);
	busBuffer48(23) <= bus32In(16);
	busBuffer48(24) <= bus32In(15);
	busBuffer48(25) <= bus32In(16);
	busBuffer48(26) <= bus32In(17);
	busBuffer48(27) <= bus32In(18);--
	busBuffer48(28) <= bus32In(19);
	busBuffer48(29) <= bus32In(20);
	busBuffer48(30) <= bus32In(19);
	busBuffer48(31) <= bus32In(20);
	busBuffer48(32) <= bus32In(21);
	busBuffer48(33) <= bus32In(22);
	busBuffer48(34) <= bus32In(23);--
	busBuffer48(35) <= bus32In(24);
	busBuffer48(36) <= bus32In(23);
	busBuffer48(37) <= bus32In(24);
	busBuffer48(38) <= bus32In(25);
	busBuffer48(39) <= bus32In(26);
	busBuffer48(40) <= bus32In(27);
	busBuffer48(41) <= bus32In(28);--
	busBuffer48(42) <= bus32In(27);
	busBuffer48(43) <= bus32In(28);
	busBuffer48(44) <= bus32In(29);
	busBuffer48(45) <= bus32In(30);
	busBuffer48(46) <= bus32In(31);
	busBuffer48(47) <= bus32In(00);

	bus48Out <= busBuffer48;

end expansion_behav;
