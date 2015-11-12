library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity processKey is
	port(
		clk         : IN std_logic;
		reset       : IN std_logic;
		bus64In     : IN std_logic_vector(0 TO 63);
		done        : OUT std_logic;
		key0        : OUT std_logic_vector(0 TO 47);
		key1        : OUT std_logic_vector(0 TO 47);
		key2        : OUT std_logic_vector(0 TO 47);
		key3        : OUT std_logic_vector(0 TO 47);
		key4        : OUT std_logic_vector(0 TO 47);
		key5        : OUT std_logic_vector(0 TO 47);
		key6        : OUT std_logic_vector(0 TO 47);
		key7        : OUT std_logic_vector(0 TO 47);
		key8        : OUT std_logic_vector(0 TO 47);
		key9        : OUT std_logic_vector(0 TO 47);
		keya        : OUT std_logic_vector(0 TO 47);
		keyb        : OUT std_logic_vector(0 TO 47);
		keyc        : OUT std_logic_vector(0 TO 47);
		keyd        : OUT std_logic_vector(0 TO 47);
		keye        : OUT std_logic_vector(0 TO 47);
		keyf        : OUT std_logic_vector(0 TO 47) 
	);
end processKey;

architecture processKey_behav of processKey is
	component permutedChoice1
		port(
		bus64In 	: IN std_logic_vector(0 TO 63);
		bus56Out    : OUT std_logic_vector(0 TO 55)
		);
	end component;

	component permutedChoice2
		port(
		bus56In 	: IN std_logic_vector(0 TO 55);
		bus48Out    : OUT std_logic_vector(0 TO 47)
		);
	end component;


	type state_type is (pc1, 
		rotacao1_1,
		rotacao2_1,
		rotacao3_2,
		rotacao4_2,
		rotacao5_2,
		rotacao6_2,
		rotacao7_2,
		rotacao8_2,
		rotacao9_1,
		rotacaoa_2,
		rotacaob_2,
		rotacaoc_2,
		rotacaod_2,
		rotacaoe_2,
		rotacaof_2,
		rotacaog_1,
		pc2_1,
		pc2_2,
		pc2_3,
		pc2_4,
		pc2_5,
		pc2_6,
		pc2_7,
		pc2_8,
		pc2_9,
		pc2_a,
		pc2_b,
		pc2_c,
		pc2_d,
		pc2_e,
		pc2_f,
		pc2_g,
		pronto);


	signal state   : state_type;


	signal c0, d0,
	       c1, d1,
	       c2, d2,
	       c3, d3,
	       c4, d4,
	       c5, d5,
	       c6, d6,
	       c7, d7,
	       c8, d8,
	       c9, d9,
	       ca, da,
	       cb, db,
	       cc, dc,
	       cd, dd,
	       ce, de,
	       cf, df,
	       cg, dg : std_logic_vector(0 TO 27);

	signal cd1,
	       cd2,
	       cd3,
	       cd4,
	       cd5,
	       cd6,
	       cd7,
	       cd8,
	       cd9,
	       cda,
	       cdb,
	       cdc,
	       cdd,
	       cde,
	       cdf,
	       cdg : std_logic_vector(0 TO 55);

	signal sig_result_pc1 : std_logic_vector(0 TO 55);

	signal inicio : std_logic_vector (0 TO 63);
	signal comparacao56 : std_logic_vector (0 TO 55);
	signal comparacao48 : std_logic_vector (0 TO 47);
	signal ccompare, dcompare: std_logic_vector(0 to 27);
begin

	mapPc1: permutedChoice1 port map(
		bus64In 	 => bus64In,
		bus56Out     => sig_result_pc1
	);

	mapPc2_k0: permutedChoice2 port map(
		bus56In 	 => cd1,
		bus48Out     => key0
	);
	mapPc2_k1: permutedChoice2 port map(
		bus56In 	 => cd2,
		bus48Out     => key1
	);
	mapPc2_k2: permutedChoice2 port map(
		bus56In 	 => cd3,
		bus48Out     => key2
	);
	mapPc2_k3: permutedChoice2 port map(
		bus56In 	 => cd4,
		bus48Out     => key3
	);
	mapPc2_k4: permutedChoice2 port map(
		bus56In 	 => cd5,
		bus48Out     => key4
	);
	mapPc2_k5: permutedChoice2 port map(
		bus56In 	 => cd6,
		bus48Out     => key5
	);
	mapPc2_k6: permutedChoice2 port map(
		bus56In 	 => cd7,
		bus48Out     => key6
	);
	mapPc2_k7: permutedChoice2 port map(
		bus56In 	 => cd8,
		bus48Out     => key7
	);
	mapPc2_k8: permutedChoice2 port map(
		bus56In 	 => cd9,
		bus48Out     => key8
	);
	mapPc2_k9: permutedChoice2 port map(
		bus56In 	 => cda,
		bus48Out     => key9
	);
	mapPc2_ka: permutedChoice2 port map(
		bus56In 	 => cdb,
		bus48Out     => keya
	);
	mapPc2_kb: permutedChoice2 port map(
		bus56In 	 => cdc,
		bus48Out     => keyb
	);
	mapPc2_kc: permutedChoice2 port map(
		bus56In 	 => cdd,
		bus48Out     => keyc
	);
	mapPc2_kd: permutedChoice2 port map(
		bus56In 	 => cde,
		bus48Out     => keyd
	);
	mapPc2_ke: permutedChoice2 port map(
		bus56In 	 => cdf,
		bus48Out     => keye
	);
	mapPc2_kf: permutedChoice2 port map(
		bus56In 	 => cdg,
		bus48Out     => keyf
	);



	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			done <= '0';
			state <= pc1;

		elsif (rising_edge(clk)) then
			case state is
				when pc1=>
					c0 <= sig_result_pc1(0 TO 27);
					d0 <= sig_result_pc1(28 TO 55);

					state <= rotacao1_1;


				-- Iteracao 1
				when rotacao1_1=>

					c1 <= c0 (1 TO 27) & c0 (0);
					d1 <= d0 (1 TO 27) & d0 (0);
					state <= pc2_1;

				when pc2_1=>
					cd1 <= c1(0 to 27) & d1(0 to 27);
					state <= rotacao2_1;

				-- Iteracao 2
				when rotacao2_1=>

					c2 <= c1 (1 TO 27) & c1 (0);
					d2 <= d1 (1 TO 27) & d1 (0);
					state <= pc2_2;

				when pc2_2=>
					cd2 <= c2(0 to 27) & d2(0 to 27);

					state <= rotacao3_2;


				-- Iteracao 3
				when rotacao3_2=>

					c3 <= c2 (2 TO 27) & c2 (0 to 1);
					d3 <= d2 (2 TO 27) & d2 (0 to 1);
					state <= pc2_3;

				when pc2_3=>
					cd3 <= c3(0 to 27) & d3(0 to 27);

					state <= rotacao4_2;


				-- Iteracao 4
				when rotacao4_2=>

					c4 <= c3 (2 TO 27) & c3 (0 to 1);
					d4 <= d3 (2 TO 27) & d3 (0 to 1);
					state <= pc2_4;

				when pc2_4=>
					cd4 <= c4(0 to 27) & d4(0 to 27);

					state <= rotacao5_2;


				-- Iteracao 5
				when rotacao5_2=>

					c5 <= c4 (2 TO 27) & c4 (0 to 1);
					d5 <= d4 (2 TO 27) & d4 (0 to 1);
					state <= pc2_5;

				when pc2_5=>
					cd5 <= c5(0 to 27) & d5(0 to 27);

					state <= rotacao6_2;


				-- Iteracao 6
				when rotacao6_2=>

					c6 <= c5 (2 TO 27) & c5 (0 to 1);
					d6 <= d5 (2 TO 27) & d5 (0 to 1);
					state <= pc2_6;

				when pc2_6=>
					cd6 <= c6(0 to 27) & d6(0 to 27);

					state <= rotacao7_2;


				-- Iteracao 7
				when rotacao7_2=>

					c7 <= c6 (2 TO 27) & c6 (0 to 1);
					d7 <= d6 (2 TO 27) & d6 (0 to 1);
					state <= pc2_7;

				when pc2_7=>
					cd7 <= c7(0 to 27) & d7(0 to 27);

					state <= rotacao8_2;


				-- Iteracao 8
				when rotacao8_2=>

					c8 <= c7 (2 TO 27) & c7 (0 to 1);
					d8 <= d7 (2 TO 27) & d7 (0 to 1);
					state <= pc2_8;

				when pc2_8=>
					cd8 <= c8(0 to 27) & d8(0 to 27);

					state <= rotacao9_1;


				-- Iteracao 9
				when rotacao9_1=>

					c9 <= c8 (1 TO 27) & c8 (0);
					d9 <= d8 (1 TO 27) & d8 (0);
					state <= pc2_9;

				when pc2_9=>
					cd9 <= c9(0 to 27) & d9(0 to 27);

					state <= rotacaoa_2;


				-- Iteracao 10
				when rotacaoa_2=>

					ca <= c9 (2 TO 27) & c9 (0 to 1);
					da <= d9 (2 TO 27) & d9 (0 to 1);
					state <= pc2_a;

				when pc2_a=>
					cda <= ca(0 to 27) & da(0 to 27);

					state <= rotacaob_2;


				-- Iteracao 11
				when rotacaob_2=>

					cb <= ca (2 TO 27) & ca (0 to 1);
					db <= da (2 TO 27) & da (0 to 1);
					state <= pc2_b;

				when pc2_b=>
					cdb <= cb(0 to 27) & db(0 to 27);

					state <= rotacaoc_2;


				-- Iteracao 12
				when rotacaoc_2=>

					cc <= cb (2 TO 27) & cb (0 to 1);
					dc <= db (2 TO 27) & db (0 to 1);
					state <= pc2_c;

				when pc2_c=>
					cdc <= cc(0 to 27) & dc(0 to 27);

					state <= rotacaod_2;


				-- Iteracao 13
				when rotacaod_2=>

					cd <= cc (2 TO 27) & cc (0 to 1);
					dd <= dc (2 TO 27) & dc (0 to 1);
					state <= pc2_d;

				when pc2_d=>
					cdd <= cd(0 to 27) & dd(0 to 27);

					state <= rotacaoe_2;


				-- Iteracao 14
				when rotacaoe_2=>

					ce <= cd (2 TO 27) & cd (0 to 1);
					de <= dd (2 TO 27) & dd (0 to 1);
					state <= pc2_e;

				when pc2_e=>
					cde <= ce(0 to 27) & de(0 to 27);

					state <= rotacaof_2;


				-- Iteracao 15
				when rotacaof_2=>

					cf <= ce (2 TO 27) & ce (0 to 1);
					df <= de (2 TO 27) & de (0 to 1);
					state <= pc2_f;

				when pc2_f=>
					cdf <= cf(0 to 27) & df(0 to 27);

					state <= rotacaog_1;


				-- Iteracao 16
				when rotacaog_1=>

					cg <= cf (1 TO 27) & cf (0);
					dg <= df (1 TO 27) & df (0);
					state <= pc2_g;

				when pc2_g=>
					cdg <= cg(0 to 27) & dg(0 to 27);

					state <= pronto;


				when pronto=>
					done <= '1';

					state <= pronto;

			end case;
		end if;
	end process;

	ccompare <= "1111000011001100101010101111";
	dcompare <= "0101010101100110011110001111";

	comparacao48 <="110010110011110110001011000011100001011111110101";

end processKey_behav;
