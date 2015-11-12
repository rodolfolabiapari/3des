library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram is
  generic(
		ADDRESS_WIDTH	: integer := 9; -- 65536 endereços
		DATA_WIDTH		: integer := 16
	);

  port (
    clock   : in  std_logic;
    we      : in  std_logic;
    address : in  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
    datain  : in  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    dataout : out std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
  );
end entity ram;

architecture ram_arch of ram is

   type ram_type is array (0 to (2 ** ADDRESS_WIDTH) - 1) of std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
   signal ram : ram_type;

   signal read_address : std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);

begin

  RamProc: process(clock) is

  begin
    if (clock'event AND clock = '1') then
      if (we = '1') then
        ram(to_integer(unsigned(address))) <= datain;
      end if;
      read_address <= address;
    end if;
  end process RamProc;

  dataout <= ram(to_integer(unsigned(read_address)));

end architecture ram_arch;
