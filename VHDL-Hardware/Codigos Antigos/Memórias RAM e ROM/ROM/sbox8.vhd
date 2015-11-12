library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox8 is
	port(
		clk 	: IN std_logic;
		address16 	: IN std_logic_vector(3 DOWNTO 0);
		address4 	: IN std_logic_vector(1 DOWNTO 0);
      data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
end sbox8;

architecture sbox8_behav of sbox8 is
type memory is array (integer range 0 to 255) of std_logic_vector (3 downto 0);


	constant mem_RomX : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"D",
			1  => x"2",
			2  => x"8",
			3  => x"4",
			4  => x"6",
			5  => x"F",
			6  => x"B",
			7  => x"1",
			8  => x"A",
			9  => x"9",
			10 => x"3",
			11 => x"E",
			12 => x"5",
			13 => x"0",
			14 => x"C",
			15 => x"7",
			others => "0000"
		);


	constant mem_RomX : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"1",
			1  => x"F",
			2  => x"D",
			3  => x"8",
			4  => x"A",
			5  => x"3",
			6  => x"7",
			7  => x"4",
			8  => x"C",
			9  => x"5",
			10 => x"6",
			11 => x"B",
			12 => x"0",
			13 => x"D",
			14 => x"9",
			15 => x"2",
			others => "0000"
		);



	constant mem_RomX : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"7",
			1  => x"B",
			2  => x"4",
			3  => x"1",
			4  => x"9",
			5  => x"C",
			6  => x"E",
			7  => x"2",
			8  => x"0",
			9  => x"6",
			10 => x"A",
			11 => x"D",
			12 => x"F",
			13 => x"3",
			14 => x"5",
			15 => x"8",
			others => "0000"
		);


	constant mem_RomX : memory := (
	--  q0 t0 0-15
	-- 0X  XX XXXX
	-- 0x8, 0x1, 0x7, 0xd, 0x6, 0xf, 0x3, 0x2, 0x0, 0xb, 0x5, 0x9, 0xe, 0xc, 0xa, 0x4, //00-15
	-- 00000000 a 00001111
			0  => x"2",
			1  => x"1",
			2  => x"E",
			3  => x"7",
			4  => x"4",
			5  => x"A",
			6  => x"8",
			7  => x"D",
			8  => x"F",
			9  => x"C",
			10 => x"9",
			11 => x"0",
			12 => x"3",
			13 => x"5",
			14 => x"6",
			15 => x"B",
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
end sbox8_behav;
