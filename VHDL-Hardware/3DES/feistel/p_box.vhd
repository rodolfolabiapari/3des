library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_box is
	port(
		bus32In     : IN std_logic_vector(0 TO 31);
		bus32Out    : OUT std_logic_vector(0 TO 31)
	);
end p_box;

architecture p_box_behav of p_box is

	signal busBuffer32 : std_logic_vector(0 TO 31);
BEGIN
	busBuffer32(00) <= bus32In(15);
	busBuffer32(01) <= bus32In(06);
	busBuffer32(02) <= bus32In(19);
	busBuffer32(03) <= bus32In(20);
	busBuffer32(04) <= bus32In(28);
	busBuffer32(05) <= bus32In(11);
	busBuffer32(06) <= bus32In(27);
	busBuffer32(07) <= bus32In(16);
	busBuffer32(08) <= bus32In(00);
	busBuffer32(09) <= bus32In(14);
	busBuffer32(10) <= bus32In(22);
	busBuffer32(11) <= bus32In(25);
	busBuffer32(12) <= bus32In(04);
	busBuffer32(13) <= bus32In(17);
	busBuffer32(14) <= bus32In(30);
	busBuffer32(15) <= bus32In(09);
	busBuffer32(16) <= bus32In(01);
	busBuffer32(17) <= bus32In(07);
	busBuffer32(18) <= bus32In(23);
	busBuffer32(19) <= bus32In(13);
	busBuffer32(20) <= bus32In(31);
	busBuffer32(21) <= bus32In(26);
	busBuffer32(22) <= bus32In(02);
	busBuffer32(23) <= bus32In(08);
	busBuffer32(24) <= bus32In(18);
	busBuffer32(25) <= bus32In(12);
	busBuffer32(26) <= bus32In(29);
	busBuffer32(27) <= bus32In(05);
	busBuffer32(28) <= bus32In(21);
	busBuffer32(29) <= bus32In(10);
	busBuffer32(30) <= bus32In(03);
	busBuffer32(31) <= bus32In(24);

	bus32Out <= busBuffer32;

end p_box_behav;
