library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox4 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox4;

architecture sbox4_behav of sbox4 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);

	constant mem_Rom0 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"7",
			1  => x"D",
			2  => x"E",
			3  => x"3",
			4  => x"0",
			5  => x"6",
			6  => x"9",
			7  => x"A",
			8  => x"1",
			9  => x"2",
			10 => x"8",
			11 => x"5",
			12 => x"B",
			13 => x"C",
			14 => x"4",
			15 => x"F",
			others => "0000"
		);

	constant mem_Rom1 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"D",
			1  => x"8",
			2  => x"B",
			3  => x"5",
			4  => x"6",
			5  => x"F",
			6  => x"0",
			7  => x"3",
			8  => x"4",
			9  => x"7",
			10 => x"2",
			11 => x"C",
			12 => x"1",
			13 => x"A",
			14 => x"E",
			15 => x"9",
			others => "0000"
		);

	constant mem_Rom2 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"A",
			1  => x"6",
			2  => x"9",
			3  => x"0",
			4  => x"C",
			5  => x"B",
			6  => x"7",
			7  => x"D",
			8  => x"F",
			9  => x"1",
			10 => x"3",
			11 => x"E",
			12 => x"5",
			13 => x"2",
			14 => x"8",
			15 => x"4",
			others => "0000"
		);

	constant mem_Rom3 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"3",
			1  => x"F",
			2  => x"0",
			3  => x"6",
			4  => x"A",
			5  => x"1",
			6  => x"D",
			7  => x"8",
			8  => x"9",
			9  => x"4",
			10 => x"5",
			11 => x"B",
			12 => x"C",
			13 => x"7",
			14 => x"2",
			15 => x"E",
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
end sbox4_behav;
