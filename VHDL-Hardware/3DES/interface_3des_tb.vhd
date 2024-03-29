LIBRARY IEEE;
use IEEE.std_logic_1164.all; -- std_logic e std_logic_vector
use IEEE.numeric_std.all; -- unsigned: array of std_logic
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY interface_3des_tb IS
END interface_3des_tb;

ARCHITECTURE interface_3des_tb_behav OF interface_3des_tb IS

	-- Importação de componente
	COMPONENT interface_3des port (
		clock          : IN std_logic;
		barramentoIn   : in std_logic_vector(63 downto 0);
		inStable       : in std_logic;
		-- barramentoOut  : in std_logic_vector(63 downto 0);
		reset          : In std_logic;
		done           : OUT std_logic
		);
	END COMPONENT;

	signal sig_clock        : std_logic;
	signal sig_barramentoIn : std_logic_vector(63 downto 0);
	signal sig_inStable     : std_logic;
	signal sig_reset        : std_logic;
	signal sig_done         : std_logic;

	-- 986 / 16 = 61,625.     (62 * 16) - (61,625 * 16) = 6 nibble que serão adicionados
	--signal texto : std_logic_vector (0 to (62 * 64) - 1) := x"477561726461692d766f7320646f732066616c736f732070726f66657461732c207175652076c3aa6d20612076c3b37320636f6d20766573746573206465206f76656c6861732c206d617320706f722064656e74726f2073c3a36f206c6f626f7320766f72617a65732e2050656c6f73207365757320667275746f73206f7320636f6e68656365726569732e20436f6c68656d2d73652c20706f7276656e747572612c207576617320646f7320657370696e686569726f732c206f75206669676f7320646f73206162726f6c686f733f20417373696d20746f6461206120c3a172766f726520626f612064c3a120626f6e7320667275746f732c20706f72c3a96d206120c3a172766f7265206dc3a12064c3a1206d61757320667275746f732e20556d6120c3a172766f726520626f61206ec3a36f20706f646520646172206d61757320667275746f732c206e656d20756d6120c3a172766f7265206dc3a12064617220626f6e7320667275746f732e20546f6461206120c3a172766f726520717565206ec3a36f2064c3a120626f6d20667275746f2c20c3a920636f72746164612065206c616ec3a7616461206e6f20666f676f2e204c6f676f2070656c6f207365757320667275746f73206f7320636f6e68656365726569732e20284d617465757320373a31352d323029000000";

	signal texto : std_logic_vector (0 to (62 * 64) - 1) := x"49dd93d0e4556a649c999d50269228062a6612015bca2013c6c77102fb42501ae6d1e3cf19ef877233a4a9eac78fe384a7bbae8c75826f696f315c4fbcf4dac1958aae2afec07dfc7fc563259b3fea11e2aaeafec635749ef6fe931c9deb3dfff96eb0fd7cf6d5bbc08016850ae344dc7943be553d4196e11f70b1ea16b82c8b72500ab1f43f098ac8ff527431c4b86d6d858b7c65425f00a4027e6f1bc6d2c6000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

BEGIN
	-- Mapeamento de portas
	UUT_interface_box: interface_3des PORT MAP(
		clock           => sig_clock       ,
		barramentoIn    => sig_barramentoIn,
		inStable        => sig_inStable    ,
		reset           => sig_reset       ,
		done            => sig_done        
	);

	processClk: Process 
	BEGIN
		sig_clock <= '0';
		wait for 1 ns;
		sig_clock <= '1';
		wait for 1 ns;
	END PROCESS;

	-- Processo responsavel pela variação no dado de entrada
	signal_dadoA: PROCESS
	BEGIN
		--0123456789ABCDEF
		--key-133457799BBCDFF1

-- Guardai-vos dos falsos profetas, que vêm a vós com vestes de ovelhas, mas por dentro são lobos vorazes. Pelos seus frutos os conhecereis. Colhem-se, porventura, uvas dos espinheiros, ou figos dos abrolhos? Assim toda a árvore boa dá bons frutos, porém a árvore má dá maus frutos. Uma árvore boa não pode dar maus frutos, nem uma árvore má dar bons frutos. Toda a árvore que não dá bom fruto, é cortada e lançada no fogo. Logo pelo seus frutos os conhecereis. (Mateus 7:15-20)
-- 477561726461692d766f7320646f732066616c736f732070726f66657461732c207175652076c3aa6d20612076c3b37320636f6d20766573746573206465206f76656c6861732c206d617320706f722064656e74726f2073c3a36f206c6f626f7320766f72617a65732e2050656c6f73207365757320667275746f73206f7320636f6e68656365726569732e20436f6c68656d2d73652c20706f7276656e747572612c207576617320646f7320657370696e686569726f732c206f75206669676f7320646f73206162726f6c686f733f20417373696d20746f6461206120c3a172766f726520626f612064c3a120626f6e7320667275746f732c20706f72c3a96d206120c3a172766f7265206dc3a12064c3a1206d61757320667275746f732e20556d6120c3a172766f726520626f61206ec3a36f20706f646520646172206d61757320667275746f732c206e656d20756d6120c3a172766f7265206dc3a12064617220626f6e7320667275746f732e20546f6461206120c3a172766f726520717565206ec3a36f2064c3a120626f6d20667275746f2c20c3a920636f72746164612065206c616ec3a7616461206e6f20666f676f2e204c6f676f2070656c6f207365757320667275746f73206f7320636f6e68656365726569732e20284d617465757320373a31352d323029
		sig_reset <= '1';
		sig_inStable <= '0';
		wait for 2 ns;

		-- Define tipo de operacao
		sig_reset <= '0';
		sig_barramentoIn <= x"0000000000000000";
		sig_inStable <= '1';
		wait for 4 ns;

		sig_inStable <= '0';
		wait for 2 ns;


		-- Define chave
		sig_barramentoIn <= x"1133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;

		-- Define chave
		sig_barramentoIn <= x"1133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;

		-- Define chave
		sig_barramentoIn <= x"1133457799BBCDFF";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;
		

		-- Define quantidade blocos
		sig_barramentoIn <= x"000000000000003d";
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;



		for I in 0 to 61 loop
			sig_barramentoIn <= texto(i * 64 to (i + 1) * 64 - 1);
			sig_inStable <= '1';
			wait for 2 ns;
	
			sig_inStable <= '0';
			wait for 2 ns;
		end loop;



--		-- Define blocos
--		sig_barramentoIn <= x"726f646f6c666f6c";
--		sig_inStable <= '1';
--		wait for 2 ns;
--
--		sig_inStable <= '0';
--		wait for 2 ns;
--
--
--
--		-- Define blocos
--		sig_barramentoIn <= x"6162696170617269";
--		sig_inStable <= '1';
--		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;

		
		sig_inStable <= '1';
		wait for 2 ns;

		sig_inStable <= '0';
		wait for 2 ns;


		wait for 2 ms;
	END PROCESS;

END ARCHITECTURE interface_3des_tb_behav;