library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox5 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox5;

architecture sbox5_behav of sbox5 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);


	constant mem_Rom0 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"2",
			1  => x"C",
			2  => x"4",
			3  => x"1",
			4  => x"7",
			5  => x"A",
			6  => x"B",
			7  => x"6",
			8  => x"8",
			9  => x"5",
			10 => x"3",
			11 => x"F",
			12 => x"D",
			13 => x"0",
			14 => x"E",
			15 => x"9",
			others => "0000"
		);

	constant mem_Rom1 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"E",
			1  => x"B",
			2  => x"2",
			3  => x"C",
			4  => x"4",
			5  => x"7",
			6  => x"D",
			7  => x"1",
			8  => x"5",
			9  => x"0",
			10 => x"F",
			11 => x"A",
			12 => x"3",
			13 => x"9",
			14 => x"8",
			15 => x"6",
			others => "0000"
		);

	constant mem_Rom2 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"4",
			1  => x"2",
			2  => x"1",
			3  => x"B",
			4  => x"A",
			5  => x"D",
			6  => x"7",
			7  => x"8",
			8  => x"F",
			9  => x"9",
			10 => x"C",
			11 => x"5",
			12 => x"6",
			13 => x"3",
			14 => x"0",
			15 => x"E",
			others => "0000"
		);

	constant mem_Rom3 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"B",
			1  => x"8",
			2  => x"C",
			3  => x"7",
			4  => x"1",
			5  => x"E",
			6  => x"2",
			7  => x"D",
			8  => x"6",
			9  => x"F",
			10 => x"0",
			11 => x"9",
			12 => x"A",
			13 => x"4",
			14 => x"5",
			15 => x"3",
			others => "0000"
		);

--	constant mem_RomX : memory := (
--	--  q0 t0 0-15
--	-- 0X  XX XXXX
--	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
--	-- 00000000 a 00001111
--			0 => x"",
--			1 => x"",
--			2 => x"",
--			3 => x"",
--			4 => x"",
--			5 => x"",
--			6 => x"",
--			7 => x"",
--			8 => x"",
--			9 => x"",
--			10 => x"",
--			11 => x"",
--			12 => x"",
--			13 => x"",
--			14 => x"",
--			15 => x"",
--			others => "0000"
--		);

begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			if (address4 = "00") then
				data_out <= mem_Rom0(to_integer(unsigned(address16)));

			elsif (address4 = "01") then
				data_out <= mem_Rom1(to_integer(unsigned(address16)));

			elsif (address4 = "10") then
				data_out <= mem_Rom2(to_integer(unsigned(address16)));

			elsif (address4 = "11")
				data_out <= mem_Rom3(to_integer(unsigned(address16)));
			end if;
		end if;
	end process;
end sbox5_behav;
