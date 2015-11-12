library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity f is
	port(
		clk          : IN std_logic;
		reset        : In std_logic;
		halfBlock    : IN std_logic_vector(0 TO 31);
		key          : IN std_logic_vector(0 TO 47);
		done         : OUT std_logic;
		busFeistelOut : OUT std_logic_vector(0 TO 31)
	);
end f;

architecture f_behav of f is
	component expansion
		port(
		bus32In      : IN std_logic_vector(0 TO 31);
		bus48Out     : OUT std_logic_vector(0 TO 47)
		);
	end component;
	signal sig_result_expansion : std_logic_vector (0 to 47);

	component sbox
		port(
		clk          : IN std_logic;
		reset        : IN std_logic;
		bus48In      : IN std_logic_vector(0 TO 47);
		bus32Out     : OUT std_logic_vector(0 TO 31);
		done         : OUT std_logic
		);
	end component;
	signal sig_result_sbox_buffer   : std_logic_vector(0 to 31);
	signal sig_done_sbox     : std_logic;
	signal sig_reset_sbox    : std_logic;

	component p_box
		port(
		bus32In      : IN std_logic_vector(0 TO 31);
		bus32Out     : OUT std_logic_vector(0 TO 31)
		);
	end component;
	signal sig_result_p_box : std_logic_vector (0 to 31);


	type state_type is (op_xor, op_sbox, op_p_box, pronto);
	signal state   : state_type;


	signal sig_result_sbox   : std_logic_vector(0 to 31);
	signal sig_bus_xor       : std_logic_vector(0 to 47);
	signal sig_bus_sbox      : std_logic_vector(0 to 31);

begin
	mapE: expansion port map(
		bus32In     => halfBlock,
		bus48Out    => sig_result_expansion
	);

	mapSbox: sbox port map(
		clk         => clk,
		reset       => sig_reset_sbox,
		bus48In     => sig_bus_xor,
		bus32Out    => sig_result_sbox,
		done        => sig_done_sbox
	);

	mapP_box: p_box port map(
		bus32In     => sig_bus_sbox,
		bus32Out    => sig_result_p_box
	);



	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset =  '1' then
			done <= '0';
			sig_reset_sbox <= '1';
			state <= op_xor;

		elsif (rising_edge(clk)) then
			case state is
				when op_xor=>
					sig_reset_sbox <= '0';
					sig_bus_xor <= sig_result_expansion xor key;

					state <= op_sbox;


				when op_sbox=>
					if (sig_done_sbox = '1') then
						sig_result_sbox_buffer <= sig_result_sbox;
						
						state <= op_p_box;
					end if;


				when op_p_box=>
					sig_bus_sbox <= sig_result_sbox_buffer;

					state <= pronto;


				when pronto=>
					busFeistelOut <= sig_result_p_box;
					done <= '1';

					state <= pronto;
			end case;
		end if;
	end process;

end f_behav;
