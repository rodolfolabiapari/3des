library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ramTexto is
	generic(
		bits_endereco	: integer := 10; -- 32
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

	type ram_type is array (0 to ((2 ** bits_endereco) - 1)) of std_logic_vector((bits_dado - 1) DOWNTO 0);
	signal ram : ram_type := (others => (others => '0'));

	signal endereco_leitura : integer range 0 to ((2 ** bits_endereco) - 1) ;

begin

	endereco_leitura <= to_integer(unsigned(endereco));

	RamProc: process(clock) is
	begin
		if (clock'event AND clock = '1') then
			if (escrita = '1') then
				ram(endereco_leitura) <= datain;
				dataout <= (others => '0');
			else 
				dataout <= ram(endereco_leitura);
			end if;
			--endereco_leitura <= to_integer(unsigned(endereco));
	    end if;
	end process RamProc;


end architecture ramTexto_arch;