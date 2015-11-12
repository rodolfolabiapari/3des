library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tdes is
	port(
		clock          : IN std_logic;
		reset          : In std_logic;
		text64         : IN std_logic_vector(0 TO 63);
		key192         : IN std_logic_vector(0 TO 191);
		done           : OUT std_logic;
		textOut64      : OUT std_logic_vector(0 TO 63)
	);
end tdes;

architecture tdes_behav of tdes is
	component des 
		port (
			clk          : IN std_logic;
			reset        : In std_logic;
			text64       : IN std_logic_vector(0 TO 63);
			key          : IN std_logic_vector(0 TO 63);
			done         : OUT std_logic;
			textOut64    : OUT std_logic_vector(0 TO 63)
		);
	end component;

	type state_type is (state_reset,
		des1Carrega, des1Opera, des1SalvaInformacao,
		des2Carrega, des2Opera, des2SalvaInformacao,
		des3Carrega, des3Opera, des3SalvaInformacao,
		pronto);
	signal estado   : state_type;

	signal resultadoOperacao1 : std_logic_vector(0 to 63);
	signal resultadoOperacao2 : std_logic_vector(0 to 63);
	signal resultadoOperacao3 : std_logic_vector(0 to 63);

	signal sig_text64 : std_logic_vector(0 to 63);
	signal sig_key : std_logic_vector(0 to 63);
	signal sig_textOut64 : std_logic_vector(0 to 63);
	signal sig_done : std_logic;
	signal sig_reset : std_logic;
begin

	mapDes: des port map(
		clk       => clock       ,
		reset     => sig_reset     ,
		text64    => sig_text64    ,
		key       => sig_key       ,
		done      => sig_done      ,
		textOut64 => sig_textOut64  
	);


	process (clock, reset)
	begin
		if reset = '1' then
			estado <= state_reset;
		else 
			if (clock'event and clock = '1') then
				case estado is
					when state_reset =>

						if (reset = '0') then
							estado <= des1Carrega;
						end if;

					when des1Carrega =>
						estado <= des1Opera;

					when des1Opera =>

						if (sig_done = '1') then
							estado <= des1SalvaInformacao;
						end if;

					when des1SalvaInformacao =>
						estado <= des2Carrega;


					when des2Carrega =>
						estado <= des2Opera;

					when des2Opera =>

						if (sig_done = '1') then
							estado <= des2SalvaInformacao;
						end if;

					when des2SalvaInformacao =>
						estado <= des3Carrega;


					when des3Carrega =>
						estado <= des3Opera;

					when des3Opera =>

						if (sig_done = '1') then
							estado <= des3SalvaInformacao;
						end if;

					when des3SalvaInformacao =>
						estado <= pronto;

					when others =>
				end case;


			end if;
		end if;
	end process;


	-- Logic to advance to the next state
	process (clock, reset)
	begin
		if (rising_edge(clock)) then
			case estado is
				when state_reset =>
					done <= '0';
					sig_reset <= '1';


				when des1Carrega =>
					sig_text64 <= text64;
					sig_key <= key192(0 to 63);

				when des1Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao1 <= sig_textOut64;
					end if;

				when des1SalvaInformacao =>
					sig_reset <= '1';


				when des2Carrega=>
					sig_text64 <= resultadoOperacao1;
					sig_key <= key192(64 to 127);

				when des2Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao2 <= sig_textOut64;
					end if;

				when des2SalvaInformacao =>
					sig_reset <= '1';


				when des3Carrega=>
					sig_text64 <= resultadoOperacao2;
					sig_key <= key192(128 to 191);

				when des3Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao3 <= sig_textOut64;
					end if;

				when des3SalvaInformacao =>

				when pronto =>
					done <= '1';
					textOut64 <= resultadoOperacao3;

				when others =>
			end case;
		end if;
	end process;
end tdes_behav;
