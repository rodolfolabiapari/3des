-- Test Bench para memória RAM

LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;
USE IEEE.Numeric_std.all;

ENTITY Ram_TB IS
END ENTITY Ram_TB;

ARCHITECTURE sinais OF Ram_TB IS

	-- Sinais internos
	SIGNAL sig_address :std_logic_vector(8 DOWNTO 0);             -- Endereço de acesso à memória -> (2^16 - 1) posições
	SIGNAL sig_dataIn: std_logic_vector(15 DOWNTO 0);  			   -- Largura da memória -> (2^7 - 1) bits
	SIGNAL sig_dataOut: std_logic_vector(15 DOWNTO 0);
	SIGNAL sig_WE : Std_logic;                                     -- Sinal de controle -> WE = 1 -> Write (Write Enable)
	SIGNAL sig_clock : Std_logic;                                  -- Sinal de relógio

	COMPONENT ram                                                  -- Importação do componente RAM já construido
		PORT
		(
			clock   : IN  std_logic;
			we      : IN  std_logic;
			address : IN  std_logic_vector(8 DOWNTO 0);
			datain  : IN  std_logic_vector(15 DOWNTO 0);
			dataout : OUT std_logic_vector(15 DOWNTO 0)
		);
	END COMPONENT;


BEGIN

	-- Mapeamento de portas do componente RAM com sinais do Test Bench
	UUT_ram: ram PORT MAP
	(
		clock   => sig_clock,
		we      => sig_WE,
		address => sig_address,
		datain  => sig_dataIn,
		dataout => sig_dataOut
	);

	P_clockGen: PROCESS IS                                        				 -- Controle de Clock
	BEGIN

		sig_clock <= '0';                                      					 -- Clock em nível baixo por 10 ns
		WAIT FOR 10 ns;
		sig_clock <= '1';                                     					 -- Clock em nível alto por 10 ns
		WAIT FOR 10 ns;

	END PROCESS P_clockGen;                                        				 -- Fim do controle de clock

	P_WB: PROCESS IS                                               				 -- Processo de Escrita (WRITE)
	BEGIN

		WAIT UNTIL rising_edge(sig_clock);                          			 -- Caso occora uma borda de subida no clock, ou seja, um sinal para gravar os dados na memória

			sig_WE <= '1';                                             			 -- Inicializa seletor de opção, WE = 0, ou seja, desabilita escrita na memória
			sig_address <= "000000000";                          		 -- Inicializa o barramento de endereço
			sig_dataIn  <= "1111111100000000";                                 			 -- Inicializa o barramento de entrada, ou seja, grava na posição "0" o valor "0"

			WHILE sig_address /= "111111111" LOOP           				 -- Enquanto o endereço solicitado na memória for diferente da posição 255 "0000000001111111"
																				 -- Posiciona o seletro de opção na posição de escrita, WE = 1

				WAIT UNTIL rising_edge(sig_clock);                     			 -- Aguarda uma borda de subida no clock

					sig_address <= std_logic_vector(unsigned(sig_address) + 1);  -- Incrementa o endereço de acesso à memória em uma unidade
					sig_dataIn  <= std_logic_vector(unsigned(sig_dataIn) - 1);   -- Decrementa o valor a ser armazenado na memória em uma unidade

			END LOOP;

		WAIT UNTIL rising_edge(sig_clock);                             		     -- Aguarda a ocorrência de uma borda de subida no clock

			sig_WE <= '0';                                            		     -- Inicializa seletor de opção, desabilita escrita
			sig_address <= "000000000";                         			 -- Inicializa o barramento de endereço

			WHILE sig_address /= "111111111" LOOP               			 -- Lê os 256 primeiros endereços, ou seja, até sig_address for igual a "0000000001111111"

				WAIT UNTIL rising_edge(sig_clock);                           	 -- Aguarda a ocorrência de uma borda de subida no clock

					sig_address <= std_logic_vector(unsigned(sig_address) + 1);  -- Incrementa o valor do endereço em uma unidade, assim percorre todos os endereços

			END LOOP;

	END PROCESS P_WB;

END ARCHITECTURE sinais;
