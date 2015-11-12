library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity un_des is
	port(
		clk          : IN std_logic;
		reset        : In std_logic;
		text64       : IN std_logic_vector(0 TO 63);
		key          : IN std_logic_vector(0 TO 63);
		done         : OUT std_logic;
		textOut64    : OUT std_logic_vector(0 TO 63)
	);
end un_des;

architecture un_des_behav of un_des is
	component initialPermutation
		port(
		ipIn          : IN std_logic_vector(0 TO 63);
		ipOut         : OUT std_logic_vector(0 TO 63)
		);
	end component;
	component initialPermutationFinale
		port(
		ipIn          : IN std_logic_vector(0 TO 63);
		ipOut         : OUT std_logic_vector(0 TO 63)
		);
	end component;
	component f
		port(
		clk           : IN std_logic;
		reset         : In std_logic;
		halfBlock     : IN std_logic_vector(0 TO 31);
		key           : IN std_logic_vector(0 TO 47);
		done          : OUT std_logic;
		busFeistelOut : OUT std_logic_vector(0 TO 31)
		);
	end component;

	component processKey
		port(
		clk           : IN std_logic;
		reset         : IN std_logic;
		bus64In       : IN std_logic_vector(0 TO 63);
		done          : OUT std_logic;
		key0          : OUT std_logic_vector(0 TO 47);
		key1          : OUT std_logic_vector(0 TO 47);
		key2          : OUT std_logic_vector(0 TO 47);
		key3          : OUT std_logic_vector(0 TO 47);
		key4          : OUT std_logic_vector(0 TO 47);
		key5          : OUT std_logic_vector(0 TO 47);
		key6          : OUT std_logic_vector(0 TO 47);
		key7          : OUT std_logic_vector(0 TO 47);
		key8          : OUT std_logic_vector(0 TO 47);
		key9          : OUT std_logic_vector(0 TO 47);
		keya          : OUT std_logic_vector(0 TO 47);
		keyb          : OUT std_logic_vector(0 TO 47);
		keyc          : OUT std_logic_vector(0 TO 47);
		keyd          : OUT std_logic_vector(0 TO 47);
		keye          : OUT std_logic_vector(0 TO 47);
		keyf          : OUT std_logic_vector(0 TO 47) 
		);
	end component;




	-- Sinais;
	signal l0, r0,
	       l1, r1,
	       l2, r2,
	       l3, r3,
	       l4, r4,
	       l5, r5,
	       l6, r6,
	       l7, r7,
	       l8, r8,
	       l9, r9,
	       la, ra,
	       lb, rb,
	       lc, rc,
	       ld, rd,
	       le, re,
	       lf, rf,
	       lg, rg : std_logic_vector(0 TO 31);

	signal chavesJaCalculadas : std_logic;
	signal sig_ip_ipIn        : std_logic_vector(0 TO 63);
	signal sig_ip_ipOut       : std_logic_vector(0 TO 63);
	signal sig_ip_ipIn_Finale : std_logic_vector(0 TO 63);
	signal sig_ip_ipOut_Finale: std_logic_vector(0 TO 63);

	signal sig_f_reset        : std_logic;
	signal sig_f_halfBlock    : std_logic_vector(0 TO 31);
	signal sig_f_key          : std_logic_vector(0 TO 47);
	signal sig_f_done         : std_logic;
	signal sig_f_busFeistelOut: std_logic_vector(0 TO 31);

	signal sig_k_reset        : std_logic;
	signal sig_k_done         : std_logic;
	signal sig_k_key0         : std_logic_vector(0 TO 47);
	signal sig_k_key1         : std_logic_vector(0 TO 47);
	signal sig_k_key2         : std_logic_vector(0 TO 47);
	signal sig_k_key3         : std_logic_vector(0 TO 47);
	signal sig_k_key4         : std_logic_vector(0 TO 47);
	signal sig_k_key5         : std_logic_vector(0 TO 47);
	signal sig_k_key6         : std_logic_vector(0 TO 47);
	signal sig_k_key7         : std_logic_vector(0 TO 47);
	signal sig_k_key8         : std_logic_vector(0 TO 47);
	signal sig_k_key9         : std_logic_vector(0 TO 47);
	signal sig_k_keya         : std_logic_vector(0 TO 47);
	signal sig_k_keyb         : std_logic_vector(0 TO 47);
	signal sig_k_keyc         : std_logic_vector(0 TO 47);
	signal sig_k_keyd         : std_logic_vector(0 TO 47);
	signal sig_k_keye         : std_logic_vector(0 TO 47);
	signal sig_k_keyf         : std_logic_vector(0 TO 47);
	
	
	type state_type is (op_reset_key,
	 op_process_key, op_ip, op_ip_final,
	 op_f0_working, op_f0_done, op_f0_clean,
	 op_f1_working, op_f1_done, op_f1_clean,
	 op_f2_working, op_f2_done, op_f2_clean,
	 op_f3_working, op_f3_done, op_f3_clean,
	 op_f4_working, op_f4_done, op_f4_clean,
	 op_f5_working, op_f5_done, op_f5_clean,
	 op_f6_working, op_f6_done, op_f6_clean,
	 op_f7_working, op_f7_done, op_f7_clean,
	 op_f8_working, op_f8_done, op_f8_clean,
	 op_f9_working, op_f9_done, op_f9_clean,
	 op_fa_working, op_fa_done, op_fa_clean,
	 op_fb_working, op_fb_done, op_fb_clean,
	 op_fc_working, op_fc_done, op_fc_clean,
	 op_fd_working, op_fd_done, op_fd_clean,
	 op_fe_working, op_fe_done, op_fe_clean,
	 op_ff_working, op_ff_done, op_ff_clean,
	 pronto);
	signal state   : state_type;

begin

	mapIp: initialPermutation port map(
		ipIn          => sig_ip_ipIn        ,
		ipOut         => sig_ip_ipOut       
	);
	mapIpFinale: initialPermutationFinale port map(
		ipIn          => sig_ip_ipIn_Finale ,
		ipOut         => sig_ip_ipOut_Finale       
	);
	mapF: f port map(
		clk           => clk          ,
		reset         => sig_f_reset        ,
		halfBlock     => sig_f_halfBlock    ,
		key           => sig_f_key          ,
		done          => sig_f_done         ,
		busFeistelOut => sig_f_busFeistelOut
	);
	mapK: processKey port map(
		clk           => clk           ,
		reset         => sig_k_reset         ,
		bus64In       => key                 ,
		done          => sig_k_done          ,
		key0          => sig_k_key0          ,
		key1          => sig_k_key1          ,
		key2          => sig_k_key2          ,
		key3          => sig_k_key3          ,
		key4          => sig_k_key4          ,
		key5          => sig_k_key5          ,
		key6          => sig_k_key6          ,
		key7          => sig_k_key7          ,
		key8          => sig_k_key8          ,
		key9          => sig_k_key9          ,
		keya          => sig_k_keya          ,
		keyb          => sig_k_keyb          ,
		keyc          => sig_k_keyc          ,
		keyd          => sig_k_keyd          ,
		keye          => sig_k_keye          ,
		keyf          => sig_k_keyf          
	);



	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset =  '1' then
			done <= '0';
			sig_f_reset <= '1';

			if (chavesJaCalculadas /= '0') then
				sig_k_reset <= '1';
				state <= op_reset_key;
			else
				state <= op_process_key;
			end if ;


		elsif (rising_edge(clk)) then
			case state is
				when op_reset_key=>
					sig_k_reset <= '0';
					state <= op_process_key;


				when op_process_key=>
					if (sig_k_done = '1') then
						chavesJaCalculadas <= '1';
						sig_ip_ipIn <= text64;
						state <= op_ip;
					end if;


				when op_ip=>
					lg <= sig_ip_ipOut(0 to 31);
					rg <= sig_ip_ipOut(32 to 63);

					state <= op_ff_working;

-- Ff-------------------------------

				when op_ff_working =>

					sig_f_reset <= '0';

					lf <= rg;
					sig_f_halfBlock <= rg;
					sig_f_key <= sig_k_keyf;
					state <= op_ff_done;

				when op_ff_done =>
					if (sig_f_done = '1') then
	
						rf <= lg xor sig_f_busFeistelOut;

						state <= op_ff_clean;

					end if;

				when op_ff_clean =>
					sig_f_reset <= '1';
					state <= op_fe_working;


-- Fe-------------------------------

				when op_fe_working =>

					sig_f_reset <= '0';

					le <= rf;
					sig_f_halfBlock <= rf;
					sig_f_key <= sig_k_keye;
					state <= op_fe_done;

				when op_fe_done =>
					if (sig_f_done = '1') then
						re <= lf xor sig_f_busFeistelOut;

						state <= op_fe_clean;
					end if;

				when op_fe_clean =>
					sig_f_reset <= '1';
					state <= op_fd_working;


-- Fd-------------------------------

				when op_fd_working =>

					sig_f_reset <= '0';

					ld <= re;
					sig_f_halfBlock <= re;
					sig_f_key <= sig_k_keyd;
					state <= op_fd_done;

				when op_fd_done =>
					if (sig_f_done = '1') then
						rd <= le xor sig_f_busFeistelOut;

						state <= op_fd_clean;
					end if;

				when op_fd_clean =>
					sig_f_reset <= '1';
					state <= op_fc_working;


-- Fc-------------------------------

				when op_fc_working =>

					sig_f_reset <= '0';

					lc <= rd;
					sig_f_halfBlock <= rd;
					sig_f_key <= sig_k_keyc;
					state <= op_fc_done;

				when op_fc_done =>
					if (sig_f_done = '1') then
						rc <= ld xor sig_f_busFeistelOut;

						state <= op_fc_clean;
					end if;

				when op_fc_clean =>
					sig_f_reset <= '1';
					state <= op_fb_working;


-- Fb-------------------------------

				when op_fb_working =>

					sig_f_reset <= '0';

					lb <= rc;
					sig_f_halfBlock <= rc;
					sig_f_key <= sig_k_keyb;
					state <= op_fb_done;

				when op_fb_done =>
					if (sig_f_done = '1') then
						rb <= lc xor sig_f_busFeistelOut;

						state <= op_fb_clean;
					end if;

				when op_fb_clean =>
					sig_f_reset <= '1';
					state <= op_fa_working;


-- Fa-------------------------------

				when op_fa_working =>

					sig_f_reset <= '0';

					la <= rb;
					sig_f_halfBlock <= rb;
					sig_f_key <= sig_k_keya;
					state <= op_fa_done;

				when op_fa_done =>
					if (sig_f_done = '1') then
						ra <= lb xor sig_f_busFeistelOut;

						state <= op_fa_clean;
					end if;

				when op_fa_clean =>
					sig_f_reset <= '1';
					state <= op_f9_working;


-- F9-------------------------------

				when op_f9_working =>

					sig_f_reset <= '0';

					l9 <= ra;
					sig_f_halfBlock <= ra;
					sig_f_key <= sig_k_key9;
					state <= op_f9_done;

				when op_f9_done =>
					if (sig_f_done = '1') then
						r9 <= la xor sig_f_busFeistelOut;

						state <= op_f9_clean;
					end if;

				when op_f9_clean =>
					sig_f_reset <= '1';
					state <= op_f8_working;


-- F8-------------------------------

				when op_f8_working =>

					sig_f_reset <= '0';

					l8 <= r9;
					sig_f_halfBlock <= r9;
					sig_f_key <= sig_k_key8;
					state <= op_f8_done;

				when op_f8_done =>
					if (sig_f_done = '1') then
						r8 <= l9 xor sig_f_busFeistelOut;

						state <= op_f8_clean;
					end if;

				when op_f8_clean =>
					sig_f_reset <= '1';
					state <= op_f7_working;


-- F7-------------------------------

				when op_f7_working =>

					sig_f_reset <= '0';

					l7 <= r8;
					sig_f_halfBlock <= r8;
					sig_f_key <= sig_k_key7;
					state <= op_f7_done;

				when op_f7_done =>
					if (sig_f_done = '1') then
						r7 <= l8 xor sig_f_busFeistelOut;

						state <= op_f7_clean;
					end if;

				when op_f7_clean =>
					sig_f_reset <= '1';
					state <= op_f6_working;


-- F6-------------------------------

				when op_f6_working =>

					sig_f_reset <= '0';

					l6 <= r7;
					sig_f_halfBlock <= r7;
					sig_f_key <= sig_k_key6;
					state <= op_f6_done;

				when op_f6_done =>
					if (sig_f_done = '1') then
						r6 <= l7 xor sig_f_busFeistelOut;

						state <= op_f6_clean;
					end if;

				when op_f6_clean =>
					sig_f_reset <= '1';
					state <= op_f5_working;


-- F5-------------------------------

				when op_f5_working =>

					sig_f_reset <= '0';

					l5 <= r6;
					sig_f_halfBlock <= r6;
					sig_f_key <= sig_k_key5;
					state <= op_f5_done;

				when op_f5_done =>
					if (sig_f_done = '1') then
						r5 <= l6 xor sig_f_busFeistelOut;

						state <= op_f5_clean;
					end if;

				when op_f5_clean =>
					sig_f_reset <= '1';
					state <= op_f4_working;


-- F4-------------------------------

				when op_f4_working =>

					sig_f_reset <= '0';

					l4 <= r5;
					sig_f_halfBlock <= r5;
					sig_f_key <= sig_k_key4;
					state <= op_f4_done;

				when op_f4_done =>
					if (sig_f_done = '1') then
						r4 <= l5 xor sig_f_busFeistelOut;

						state <= op_f4_clean;
					end if;

				when op_f4_clean =>
					sig_f_reset <= '1';
					state <= op_f3_working;


-- F3-------------------------------

				when op_f3_working =>

					sig_f_reset <= '0';

					l3 <= r4;
					sig_f_halfBlock <= r4;
					sig_f_key <= sig_k_key3;
					state <= op_f3_done;

				when op_f3_done =>
					if (sig_f_done = '1') then
						r3 <= l4 xor sig_f_busFeistelOut;

						state <= op_f3_clean;
					end if;

				when op_f3_clean =>
					sig_f_reset <= '1';
					state <= op_f2_working;


-- F2-------------------------------

				when op_f2_working =>

					sig_f_reset <= '0';

					l2 <= r3;
					sig_f_halfBlock <= r3;
					sig_f_key <= sig_k_key2;
					state <= op_f2_done;

				when op_f2_done =>
					if (sig_f_done = '1') then
						r2 <= l3 xor sig_f_busFeistelOut;

						state <= op_f2_clean;
					end if;

				when op_f2_clean =>
					sig_f_reset <= '1';
					state <= op_f1_working;


-- F1-------------------------------

				when op_f1_working =>

					sig_f_reset <= '0';

					l1 <= r2;
					sig_f_halfBlock <= r2;
					sig_f_key <= sig_k_key1;
					state <= op_f1_done;

				when op_f1_done =>
					if (sig_f_done = '1') then
						r1 <= l2 xor sig_f_busFeistelOut;

						state <= op_f1_clean;
					end if;

				when op_f1_clean =>
					sig_f_reset <= '1';
					state <= op_f0_working;


-- F0-------------------------------

				when op_f0_working =>

					sig_f_reset <= '0';

					l0 <= r1;
					sig_f_halfBlock <= r1;
					sig_f_key <= sig_k_key0;
					state <= op_f0_done;

				when op_f0_done =>
					if (sig_f_done = '1') then
						r0 <= l1 xor sig_f_busFeistelOut;

						state <= op_f0_clean;
					end if;

				when op_f0_clean =>
					sig_f_reset <= '1';
					state <= op_ip_final;


				when op_ip_final =>
					sig_ip_ipIn_Finale <= rg & lg;
					textOut64 <= sig_ip_ipOut_Finale;

					state <= pronto;


				when pronto=>
					done <= '1';

					state <= pronto;
			end case;
		end if;
	end process;

end un_des_behav;
