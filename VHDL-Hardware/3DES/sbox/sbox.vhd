library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sbox is
	port(
		clk 		: IN std_logic;
		reset 	    : IN std_logic;
		bus48In 	: IN std_logic_vector(0 TO 47);
		bus32Out    : OUT std_logic_vector(0 TO 31);
		done 		: OUT std_logic
	);
end sbox;

architecture sbox_behav of sbox is

--	component INV
--	  port (A: in STD_LOGIC;
--	  F: out STD_LOGIC);
--	end component;
	
	-- SBOX 1
	component sbox1
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_1_done : std_logic;
	signal sig_1_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 2
	component sbox2
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_2_done : std_logic;
	signal sig_2_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 3
	component sbox3
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_3_done : std_logic;
	signal sig_3_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 4
	component sbox4
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_4_done : std_logic;
	signal sig_4_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 5
	component sbox5
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_5_done : std_logic;
	signal sig_5_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 6
	component sbox6
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_6_done : std_logic;
	signal sig_6_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 7
	component sbox7
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_7_done : std_logic;
	signal sig_7_busOut4 : std_logic_vector (0 TO 3);
	
	-- SBOX 8
	component sbox8
		port(
			clk 	: IN std_logic;
			reset : IN std_logic;
			busIn6 	: IN std_logic_vector(0 TO 5);
			done : OUT std_logic;
			busOut4 : OUT std_logic_vector(0 TO 3)
		);
	end component;
	signal sig_8_done : std_logic;
	signal sig_8_busOut4 : std_logic_vector (0 TO 3);


	-- Build an enumerated type for the state machine
	type state_type is (liberaSbox, espera, pronto);
	-- Register to hold the current state
	signal state   : state_type;
	
	
	signal sig_reset : std_logic;

	signal sig_bus48 : std_logic_vector(0 TO 47);
	signal sig_bus32 : std_logic_vector(0 TO 31);
	
begin
	sig_bus48 <= bus48In;

	mapSbox1: sbox1 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (0 TO 5),
		done     => sig_1_done,
		busOut4  => sig_1_busOut4
	);

	mapSbox2: sbox2 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (6 TO 11),
		done     => sig_2_done,
		busOut4  => sig_2_busOut4
	);

	mapSbox3: sbox3 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (12 TO 17),
		done     => sig_3_done,
		busOut4  => sig_3_busOut4
	);

	mapSbox4: sbox4 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (18 TO 23),
		done     => sig_4_done,
		busOut4  => sig_4_busOut4
	);

	mapSbox5: sbox5 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (24 TO 29),
		done     => sig_5_done,
		busOut4  => sig_5_busOut4
	);

	mapSbox6: sbox6 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (30 TO 35),
		done     => sig_6_done,
		busOut4  => sig_6_busOut4
	);

	mapSbox7: sbox7 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (36 TO 41),
		done     => sig_7_done,
		busOut4  => sig_7_busOut4
	);

	mapSbox8: sbox8 port map(
		clk      => clk,
		reset    => sig_reset,
		busIn6 	 => bus48In (42 TO 47),
		done     => sig_8_done,
		busOut4  => sig_8_busOut4
	);



	process (clk, reset)
	begin
		-- Reset
		if reset = '1' then
			-- Avisa que est'a trabalhando
			done <= '0';
			-- Inicia as atividades de cada sbox
			sig_reset <= '1';
			state <= liberaSbox;
			
		elsif (rising_edge(clk)) then
			case state is
				when liberaSbox=>
					sig_reset <= '0';

					state <= espera;

				-- Aguarda o resultado do Sbox
				when espera=>
					-- Quando todos estiverem com o resultado
					if (sig_1_done = '1' and
					    sig_2_done = '1' and
					    sig_3_done = '1' and
					    sig_4_done = '1' and
					    sig_5_done = '1' and
					    sig_6_done = '1' and
					    sig_7_done = '1' and
					    sig_8_done = '1')
					then

						sig_bus32 (0 TO 3)   <= sig_1_busOut4;
						sig_bus32 (4 TO 7)   <= sig_2_busOut4;
						sig_bus32 (8 TO 11)  <= sig_3_busOut4;
						sig_bus32 (12 TO 15) <= sig_4_busOut4;
						sig_bus32 (16 TO 19) <= sig_5_busOut4;
						sig_bus32 (20 TO 23) <= sig_6_busOut4;
						sig_bus32 (24 TO 27) <= sig_7_busOut4;
						sig_bus32 (28 TO 31) <= sig_8_busOut4;

						state <= pronto;
					end if;
				when pronto=>
					done <= '1';
					bus32Out <= sig_bus32;
					state <= pronto;
			end case;
		end if;
	end process;

end sbox_behav;
