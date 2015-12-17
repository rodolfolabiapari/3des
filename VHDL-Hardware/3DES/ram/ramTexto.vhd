
-- RAM Texto
-- Memoria RAM Volatil responsavel por armazenar o texto puro e o operado.
-- a primeira metade armazena o texto ainda nao operado
-- e a segunda o texto pos-operado
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ramTexto is
	generic(
		-- constante de bits de entedeco
		bits_endereco	: integer := 10; -- 32
		-- constante de bits de daddos
		bits_dado		: integer := 64
	);

	port (
		clock   : in	std_logic;
		-- se realizara escrita (1) ou leitura (0)
		escrita	: in	std_logic;
		-- endereco para o acesso
		endereco : in	std_logic_vector(bits_endereco - 1 DOWNTO 0);
		-- barramento de entrada
		datain	: in	std_logic_vector(bits_dado - 1 DOWNTO 0);
		-- barramento de saida
		dataout : out std_logic_vector(bits_dado - 1 DOWNTO 0)
	);
end entity ramTexto;

architecture ramTexto_arch of ramTexto is
	-- armazenamento
	type ram_type is array (0 to ((2 ** bits_endereco) - 1)) of std_logic_vector((bits_dado - 1) DOWNTO 0);
	signal ram : ram_type := (others => (others => '0'));

	-- endereco em formato int
	signal endereco_leitura : integer range 0 to ((2 ** bits_endereco) - 1) ;

begin

	-- conversao do endereco para inteiro
	endereco_leitura <= to_integer(unsigned(endereco));

	RamProc: process(clock) is
	begin
		if (clock'event AND clock = '1') then
			-- verifica acao
			if (escrita = '1') then
				-- se escrita, escreve
				ram(endereco_leitura) <= datain;
				-- invalida a saida
				dataout <= (others => '0');
			else 
				-- caso contrario, retorna o valor apontado
				dataout <= ram(endereco_leitura);
			end if;
	    end if;
	end process RamProc;


end architecture ramTexto_arch;