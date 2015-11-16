library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ramTexto is
	generic(
		bits_endereco	: integer := 20; --8388608 = 2^20 endereços * 8 caracteres cada. 
		bits_dado		: integer := 64
	);

	port (
		clock   : in	std_logic;
		escrita	: in	std_logic;
		endereco : in	std_logic_vector(bits_endereco - 1 DOWNTO 0);
		datain	: in	std_logic_vector(bits_dado - 1 DOWNTO 0);
		dataout : out std_logic_vector(bits_dado - 1 DOWNTO 0)
	);
end entity ramTexto;

architecture ramTexto_arch of ramTexto is

	 type ram_type is array (0 to (2 ** bits_endereco) - 1) of std_logic_vector(bits_dado - 1 DOWNTO 0);
	 signal ram : ram_type;

	 signal endereco_leitura : std_logic_vector(bits_endereco - 1 DOWNTO 0);

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

end architecture ramTexto_arch;
