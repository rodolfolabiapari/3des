library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox7 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox7;

architecture sbox7_behav of sbox7 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);


	constant mem_Rom0 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"4",
			1  => x"B",
			2  => x"2",
			3  => x"E",
			4  => x"F",
			5  => x"0",
			6  => x"8",
			7  => x"D",
			8  => x"3",
			9  => x"C",
			10 => x"9",
			11 => x"7",
			12 => x"5",
			13 => x"A",
			14 => x"6",
			15 => x"1",
			others => "0000"
		);


	constant mem_Rom1 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"D",
			1  => x"0",
			2  => x"B",
			3  => x"7",
			4  => x"4",
			5  => x"9",
			6  => x"1",
			7  => x"A",
			8  => x"E",
			9  => x"3",
			10 => x"5",
			11 => x"C",
			12 => x"2",
			13 => x"F",
			14 => x"8",
			15 => x"6",
			others => "0000"
		);


	constant mem_Rom2 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"1",
			1  => x"4",
			2  => x"B",
			3  => x"D",
			4  => x"C",
			5  => x"3",
			6  => x"7",
			7  => x"E",
			8  => x"A",
			9  => x"F",
			10 => x"6",
			11 => x"8",
			12 => x"0",
			13 => x"5",
			14 => x"9",
			15 => x"2",
			others => "0000"
		);



	constant mem_Rom3 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"6",
			1  => x"B",
			2  => x"D",
			3  => x"8",
			4  => x"1",
			5  => x"4",
			6  => x"A",
			7  => x"7",
			8  => x"9",
			9  => x"5",
			10 => x"0",
			11 => x"F",
			12 => x"E",
			13 => x"2",
			14 => x"3",
			15 => x"C",
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
end sbox7_behav;
