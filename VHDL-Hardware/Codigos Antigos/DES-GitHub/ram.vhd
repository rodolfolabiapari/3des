library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- ENTIDADE do hardware de memória RAM
entity ram is
	-- Variáveis globais
	generic(
		ADDRESS_WIDTH	: integer := 9; -- 65536 endereços
		DATA_WIDTH		: integer := 16
	);

	port (
		clock		: in  std_logic; -- Sinal de relógio para sincronização
		writeData	: in  std_logic; -- Comutador de escrita e leitura na memória RAM
		address 	: in  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0); -- Endereço onde será acessado na memória tanto para escrita quanto para leitura
		datain		: in  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0); -- Dado de entrada para ser gravado na memória
		dataout 	: out std_logic_vector(DATA_WIDTH - 1 DOWNTO 0) -- Dado de saída para a leitura
	);
end entity ram;

-- ARQUITETURA do hardware de memória RAM
architecture ram_arch of ram is
	-- Determina um novo tipo chamado ram_type
	type ram_type is array (0 to (2 ** ADDRESS_WIDTH) - 1) of std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
	-- Define o sinal da RAM que liga a memória aos barramentos de entrada e saída
	signal ram : ram_type;

	-- Barramento de saída interno
	signal read_address : std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);

begin

	-- Processo responsável por gravar e ler da memória RAM
	RamProc: process(clock) is
	begin
		-- Torna a gravação sempre com clock em borda de subida
		if (clock'event AND clock = '1') then

			-- Verifica qual tipo de ação será feia na memória
			if (writeData = '1') then
				-- Se o modo gravação estiver habilitado, a ram recebe o valor de entrada
				ram(to_integer(unsigned(address))) <= datain;
			end if;

			-- Adiciona o endereço no barramento de endereços interno
			read_address <= address;
		end if;
	end process RamProc;

	-- Adicionado o endereço no barramento de endereços interno, ele lê da posição o valor que está situado nela
	dataout <= ram(to_integer(unsigned(read_address)));

end architecture ram_arch;
