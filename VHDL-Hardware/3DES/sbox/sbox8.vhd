
-- Sbox n
-- Caixa responsavel pela SUBSTITUICAO dos bits de entradas pelos bits de acordo com
-- as tabelas pre-estabelecidas
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox8 is
	port(
		clk 	: IN std_logic;
		reset : IN std_logic;
		-- dado de entrada
		busIn6 	: IN std_logic_vector(0 TO 5);
		-- Informa sucesso
		done : OUT std_logic;
		-- valor de saida
		busOut4 : OUT std_logic_vector(0 TO 3)
	);
end sbox8;

architecture sbox8_behav of sbox8 is
-- Tabela de substituicao 
type memory is array (integer range 0 to 16) of std_logic_vector (0 TO 3);

	constant mem_Rom0 : memory := (
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


	constant mem_Rom1 : memory := (
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
			13 => x"E",
			14 => x"9",
			15 => x"2",
			others => "0000"
		);



	constant mem_Rom2 : memory := (
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


	constant mem_Rom3 : memory := (
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

	-- Maquina de estado
	type state_type is (inicia, consultaRam, pronto);
	signal state   : state_type;

begin

	process (clk, reset)
	begin
		-- Estado de reset
		if reset = '1' then
			done <= '0';
			state <= inicia;

		elsif (rising_edge(clk)) then
			case state is
				-- Inicias a substituicao
				when inicia=>
					done <= '0';
					state <= consultaRam;


				-- Consulta a ram retornando o resultado
				when consultaRam=>
					if (clk'event and clk='1') then
						if 	  (BusIn6(0) = '0' and BusIn6(5) = '0') then
							busOut4 <= mem_Rom0(to_integer(unsigned(BusIn6( 1 TO 4 ))));

						elsif (BusIn6(0) = '0' and BusIn6(5) = '1') then
							busOut4 <= mem_Rom1(to_integer(unsigned(BusIn6( 1 TO 4 ))));

						elsif (BusIn6(0) = '1' and BusIn6(5) = '0') then
							busOut4 <= mem_Rom2(to_integer(unsigned(BusIn6( 1 TO 4 ))));

						elsif (BusIn6(0) = '1' and BusIn6(5) = '1') then
							busOut4 <= mem_Rom3(to_integer(unsigned(BusIn6( 1 TO 4 ))));
						end if;
					end if;

					state <= pronto;

				-- Informa sucesso
				when pronto=>
					done <= '1';

					state <= pronto;

			end case;
		end if;
	end process;

end sbox8_behav;
