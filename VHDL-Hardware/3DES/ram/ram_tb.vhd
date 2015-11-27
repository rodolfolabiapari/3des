LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;
USE IEEE.Numeric_std.all;

ENTITY Ram_TB IS
	generic(
		bits_endereco	: integer := 10; -- 32
		bits_dado		: integer := 64
	);
END ENTITY Ram_TB;

ARCHITECTURE sinais OF Ram_TB IS

	-- Sinais internos
	signal sig_clock    : std_logic;
	signal sig_escrita  : std_logic;
	signal sig_endereco : std_logic_vector(bits_endereco - 1 DOWNTO 0);
	signal sig_datain   : std_logic_vector(bits_dado - 1 DOWNTO 0);
	signal sig_dataout  : std_logic_vector(bits_dado - 1 DOWNTO 0);

	COMPONENT ramTexto                                                  -- ImportaÃ§Ã£o do componente RAM jÃ¡ construido
		PORT
		(
			clock    : in	std_logic;
			escrita  : in	std_logic;
			endereco : in	std_logic_vector(bits_endereco - 1 DOWNTO 0);
			datain   : in	std_logic_vector(bits_dado - 1 DOWNTO 0);
			dataout  : out std_logic_vector(bits_dado - 1 DOWNTO 0)
		);
	END COMPONENT;


BEGIN

	-- Mapeamento de portas do componente RAM com sinais do Test Bench
	UUT_ram: ramTexto PORT MAP
	(
		clock    => sig_clock   ,
		escrita  => sig_escrita ,
		endereco => sig_endereco,
		datain   => sig_datain  ,
		dataout  => sig_dataout 
	);

	P_clockGen: PROCESS IS                                        				 -- Controle de Clock
	BEGIN
		sig_clock <= '0';                                      					 -- Clock em nÃ­vel baixo por 10 ns
		WAIT FOR 1 ns;
		sig_clock <= '1';                                     					 -- Clock em nÃ­vel alto por 10 ns
		WAIT FOR 1 ns;
	END PROCESS P_clockGen;                                        				 -- Fim do controle de clock

	P_WB: PROCESS IS                                               				 -- Processo de Escrita (WRITE)
	BEGIN

		WAIT UNTIL rising_edge(sig_clock);                          			 -- Caso occora uma borda de subida no clock, ou seja, um sinal para gravar os dados na memÃ³ria

			sig_escrita <= '1';                                             			 -- Inicializa seletor de opÃ§Ã£o, WE = 0, ou seja, desabilita escrita na memÃ³ria
			sig_endereco <= "0000000000";                          		 -- Inicializa o barramento de endereÃ§o
			sig_datain  <= x"1010101010101010";                                 			 -- Inicializa o barramento de entrada, ou seja, grava na posiÃ§Ã£o "0" o valor "0"

			WHILE sig_endereco /= "000000100" LOOP           				 -- Enquanto o endereÃ§o solicitado na memÃ³ria for diferente da posiÃ§Ã£o 255 "0000000001111111"
																				 -- Posiciona o seletro de opÃ§Ã£o na posiÃ§Ã£o de escrita, WE = 1

				WAIT UNTIL rising_edge(sig_clock);                     			 -- Aguarda uma borda de subida no clock

					sig_endereco <= std_logic_vector(unsigned(sig_endereco) + 1);  -- Incrementa o endereÃ§o de acesso Ã  memÃ³ria em uma unidade
					sig_datain  <= std_logic_vector(unsigned(sig_datain) - 1);   -- Decrementa o valor a ser armazenado na memÃ³ria em uma unidade

			END LOOP;

		WAIT UNTIL rising_edge(sig_clock);                             		     -- Aguarda a ocorrÃªncia de uma borda de subida no clock

			sig_escrita <= '0';                                            		     -- Inicializa seletor de opÃ§Ã£o, desabilita escrita
			sig_endereco <= x"0000000000";                         			 -- Inicializa o barramento de endereÃ§o

			WHILE sig_endereco /= x"0000000002" LOOP               			 -- LÃª os 256 primeiros endereÃ§os, ou seja, atÃ© sig_endereco for igual a "0000000001111111"

				WAIT UNTIL rising_edge(sig_clock);                           	 -- Aguarda a ocorrÃªncia de uma borda de subida no clock

					sig_endereco <= std_logic_vector(unsigned(sig_endereco) + 1);  -- Incrementa o valor do endereÃ§o em uma unidade, assim percorre todos os endereÃ§os

			END LOOP;

	END PROCESS P_WB;

END ARCHITECTURE sinais;

