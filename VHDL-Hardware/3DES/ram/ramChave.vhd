library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ramChave is
	generic(
		blocos	: integer := 3; -- 3 blocos para a chave
		bits_dado		: integer := 64
	);

	port (
		clock   : in	std_logic;
		escrita	: in	std_logic;
		endereco : in	std_logic_vector(blocos - 1 DOWNTO 0);
		datain	: in	std_logic_vector(bits_dado - 1 DOWNTO 0);
		dataout : out std_logic_vector(bits_dado - 1 DOWNTO 0)
	);
end entity ramChave;

architecture ramChave_arch of ramChave is

	 type ram_type is array (0 to (blocos) - 1) of std_logic_vector(bits_dado - 1 DOWNTO 0);
	 signal ram : ram_type;

	 signal endereco_leitura : std_logic_vector(blocos - 1 DOWNTO 0);

begin

	RamProc: process(clock) is

	begin
	if (clock'event AND clock = '1') then
		if (escrita = '1') then
		ram(to_integer(unsigned(endereco))) <= datain;
		end if;
		endereco_leitura <= endereco;
	end if;
	end process RamProc;

	dataout <= ram(to_integer(unsigned(endereco_leitura)));

end architecture ramChave_arch;
