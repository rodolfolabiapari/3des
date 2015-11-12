library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox2 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox2;

architecture sbox2_behav of sbox2 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);


	constant mem_Rom0 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"F",
			1  => x"1",
			2  => x"8",
			3  => x"E",
			4  => x"6",
			5  => x"B",
			6  => x"3",
			7  => x"4",
			8  => x"9",
			9  => x"7",
			10 => x"2",
			11 => x"D",
			12 => x"C",
			13 => x"0",
			14 => x"5",
			15 => x"A",
			others => "0000"
		);



	constant mem_Rom1 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"3",
			1  => x"D",
			2  => x"4",
			3  => x"7",
			4  => x"F",
			5  => x"2",
			6  => x"8",
			7  => x"E",
			8  => x"C",
			9  => x"0",
			10 => x"1",
			11 => x"A",
			12 => x"6",
			13 => x"9",
			14 => x"B",
			15 => x"5",
			others => "0000"
		);


	constant mem_Rom2 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"0",
			1  => x"E",
			2  => x"7",
			3  => x"B",
			4  => x"A",
			5  => x"4",
			6  => x"D",
			7  => x"1",
			8  => x"5",
			9  => x"8",
			10 => x"C",
			11 => x"6",
			12 => x"9",
			13 => x"3",
			14 => x"2",
			15 => x"F",
			others => "0000"
		);


	constant mem_Rom3 : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"D",
			1  => x"8",
			2  => x"A",
			3  => x"1",
			4  => x"3",
			5  => x"F",
			6  => x"4",
			7  => x"2",
			8  => x"B",
			9  => x"6",
			10 => x"7",
			11 => x"C",
			12 => x"0",
			13 => x"5",
			14 => x"E",
			15 => x"9",
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
end sbox2_behav;
