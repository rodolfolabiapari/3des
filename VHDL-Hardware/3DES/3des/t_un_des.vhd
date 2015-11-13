library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity t_un_des is
	port(
		clock          : IN std_logic;
		reset          : In std_logic;
		text64         : IN std_logic_vector(0 TO 63);
		key192         : IN std_logic_vector(0 TO 191);
		done           : OUT std_logic;
		textOut64      : OUT std_logic_vector(0 TO 63)
	);
end t_un_des;

architecture t_un_des_behav of t_un_des is
	component un_des 
		port (
			clk          : IN std_logic;
			reset        : IN std_logic;
			text64       : IN std_logic_vector(0 TO 63);
			key          : IN std_logic_vector(0 TO 63);
			done         : OUT std_logic;
			textOut64    : OUT std_logic_vector(0 TO 63)
		);
	end component;

	type state_type is (state_reset,
		un_des1Carrega, un_des1Opera, un_des1SalvaInformacao,
		un_des2Carrega, un_des2Opera, un_des2SalvaInformacao,
		un_des3Carrega, un_des3Opera, un_des3SalvaInformacao,
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

	mapUN_Des: un_des port map(
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
							estado <= un_des3Carrega;
						end if;

					when un_des3Carrega =>
						estado <= un_des3Opera;

					when un_des3Opera =>

						if (sig_done = '1') then
							estado <= un_des3SalvaInformacao;
						end if;

					when un_des3SalvaInformacao =>
						estado <= un_des2Carrega;


					when un_des2Carrega =>
						estado <= un_des2Opera;

					when un_des2Opera =>

						if (sig_done = '1') then
							estado <= un_des2SalvaInformacao;
						end if;

					when un_des2SalvaInformacao =>
						estado <= un_des1Carrega;


					when un_des1Carrega =>
						estado <= un_des1Opera;

					when un_des1Opera =>

						if (sig_done = '1') then
							estado <= un_des1SalvaInformacao;
						end if;

					when un_des1SalvaInformacao =>
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


				when un_des3Carrega =>
					sig_text64 <= text64;
					sig_key <= key192(0 to 63);

				when un_des3Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao3 <= sig_textOut64;
					end if;

				when un_des3SalvaInformacao =>
					sig_reset <= '1';


				when un_des2Carrega=>
					sig_text64 <= resultadoOperacao3;
					sig_key <= key192(64 to 127);

				when un_des2Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao2 <= sig_textOut64;
					end if;

				when un_des2SalvaInformacao =>
					sig_reset <= '1';


				when un_des1Carrega=>
					sig_text64 <= resultadoOperacao2;
					sig_key <= key192(128 to 191);

				when un_des1Opera =>
					sig_reset <= '0';
					if (sig_done = '1') then
						resultadoOperacao1 <= sig_textOut64;
					end if;

				when un_des1SalvaInformacao =>

				when pronto =>
					done <= '1';
					textOut64 <= resultadoOperacao1;

				when others =>
			end case;
		end if;
	end process;
end t_un_des_behav;
