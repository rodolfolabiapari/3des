library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox5 is
	port(
		clk 	: IN std_logic;
		reset : IN std_logic;
		busIn6 	: IN std_logic_vector(5 downto 0);
		done : OUT std_logic;
		busOut4 : OUT std_logic_vector(3 downto 0)
	);
end sbox5;

architecture sbox5_behav of sbox5 is
type memory is array (integer range 16 downto 0) of std_logic_vector (3 downto 0);

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

	-- Build an enumerated type for the state machine
	type state_type is (inicia, consultaRam, pronto);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			done <= '0';
			state <= inicia;

		elsif (rising_edge(clk)) then
			case state is
				when inicia=>
					done <= '0';

					state <= consultaRam;

				when consultaRam=>


					if (clk'event and clk='1') then
						if 	  (BusIn6(0) = '0' and BusIn6(5) = '0') then
							busOut4 <= mem_Rom0(to_integer(unsigned(BusIn6( 4 downto 1 ))));

						elsif (BusIn6(0) = '0' and BusIn6(5) = '1') then
							busOut4 <= mem_Rom1(to_integer(unsigned(BusIn6( 4 downto 1 ))));

						elsif (BusIn6(0) = '1' and BusIn6(5) = '0') then
							busOut4 <= mem_Rom2(to_integer(unsigned(BusIn6( 4 downto 1 ))));

						elsif (BusIn6(0) = '1' and BusIn6(5) = '1') then
							busOut4 <= mem_Rom3(to_integer(unsigned(BusIn6( 4 downto 1 ))));
						end if;
					end if;

					state <= pronto;

				when pronto=>
					done <= '1';

					state <= pronto;

			end case;
		end if;
	end process;

end sbox5_behav;
