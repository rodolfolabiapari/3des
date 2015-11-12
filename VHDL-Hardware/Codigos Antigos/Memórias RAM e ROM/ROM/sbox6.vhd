library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox6 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox6;

architecture sbox6_behav of sbox6 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);


	constant mem_Rom0 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"C",
			1  => x"1",
			2  => x"A",
			3  => x"F",
			4  => x"9",
			5  => x"2",
			6  => x"6",
			7  => x"8",
			8  => x"0",
			9  => x"D",
			10 => x"3",
			11 => x"4",
			12 => x"E",
			13 => x"7",
			14 => x"5",
			15 => x"B",
			others => "0000"
		);


	constant mem_Rom1 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"A",
			1  => x"F",
			2  => x"4",
			3  => x"2",
			4  => x"7",
			5  => x"C",
			6  => x"9",
			7  => x"5",
			8  => x"6",
			9  => x"1",
			10 => x"D",
			11 => x"E",
			12 => x"0",
			13 => x"B",
			14 => x"3",
			15 => x"8",
			others => "0000"
		);


	constant mem_Rom2 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"9",
			1  => x"E",
			2  => x"F",
			3  => x"5",
			4  => x"2",
			5  => x"8",
			6  => x"C",
			7  => x"3",
			8  => x"7",
			9  => x"0",
			10 => x"4",
			11 => x"A",
			12 => x"1",
			13 => x"D",
			14 => x"B",
			15 => x"6",
			others => "0000"
		);


	constant mem_Rom3 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"4",
			1  => x"3",
			2  => x"2",
			3  => x"C",
			4  => x"9",
			5  => x"5",
			6  => x"F",
			7  => x"A",
			8  => x"B",
			9  => x"E",
			10 => x"1",
			11 => x"6",
			12 => x"7",
			13 => x"0",
			14 => x"8",
			15 => x"D",
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
end sbox6_behav;
