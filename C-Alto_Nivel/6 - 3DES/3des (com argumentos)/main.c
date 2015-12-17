
#include "funcoes.h"



long calcularTamanhoArquivo(FILE *arquivo) {
 
	// guarda o estado ante de chamar a func'a'o fseek
	long posicaoAtual = ftell(arquivo);
 
	// guarda tamanho do arquivo
	long tamanho;
 
	// calcula o tamanho
	fseek(arquivo, 0, SEEK_END);
	tamanho = ftell(arquivo);
 
	// recupera o estado antigo do arquivo
	fseek(arquivo, posicaoAtual, SEEK_SET);
 
	return tamanho;
}

void leArquivo(FILE * arq, unsigned char * input, long size) {
	
	long i = 0;
	
	while(i < size) {
		input[i] = (unsigned char) getc(arq);
		i++;
	}
	//adiciona o fim da string
	input[i] = '\0';
}


void leChave(char * nomeArquivo, char keys[2][16], FILE * arq) {
	
	FILE * entrada;
	
	
	if ((entrada = fopen(nomeArquivo, "rb")) == NULL) {
		printf("\n\nErro ao abrir arquivo de entrada da senha!!!\n");
		fprintf(arq, "\n\nErro ao abrir arquivo de entrada da senha!!!\n");
		exit(1);
	}
	
	//Lê do arquivo o texto a ser trabalhado
	
	
	int i = 0;
	int j = 0;
	char c;
	while(j < 3) {
		i = 0;
		while (!feof(entrada) && i < 16) {

			c = getc(entrada);
			
			//if (c == '\n') i = 16;
			
			keys[j][i] = c;
			i++;
		}
		
		fseek(entrada, 2, SEEK_CUR);
		
		j++;
	}	
	
	fclose(entrada);

	//Torna todos os caracteres em caixa alta.
	
	for (j = 0; j < 3; j++) 
		upper_char (keys[j]);
	
}










int main (int argc, char *argv[]) {

	printf("\n                                ALGORITMO DES DE CRIPTOGRAFIA");
	printf("\n                              ----------- --- -- --------------");
	
	
	//nomeDoPrograma acao chave texto saida
        if (argc != 5) {
		printf("\n\nEntrada de dados inva'lida! E' requerido:");
		printf("\n\t./NomeDoPrograma acao chave texto saida\n\n\n" );
		
		exit(1);
	}
	
	char acao = argv[1][0];
	char * textoChave = argv[2];
	char * textoPuro = argv[3];
	char * textoSaida = argv[4];
        FILE * orienta;
		
	if (acao == 'e' || acao == 'E') {
/*
		textoChave = "senha.txt";
		textoPuro = "textoDecriptografado.txt";
		textoSaida = "textoCriptografado.txt";
*/
		
		if ((orienta = fopen("RelatorioDeExecucaoEncripta.txt", "wb")) == NULL) {
			printf("Erro ao criar arquivo de orientações!!!\n");
			exit(1);
		} 
	
		} else if (acao == 'd' || acao == 'D'){
		
/*
			textoChave = "senha.txt";
			textoPuro = "textoCriptografado.txt";
			textoSaida = "textoDecriptografado.txt";
*/

			if ((orienta = fopen("RelatorioDeExecucaoDesencripta.txt", "wb")) == NULL) {
				printf("Erro ao criar arquivo de orientac'o'es!!!\n");
				exit(1);
			}

			} else {
				printf("\n\nAc'a'o [%c] inva'lida!!!\n\tEscolha (E)ncriptar ou (D)escifrar.\n\n", acao);
				exit(1);
			}
	
	fprintf(orienta, "\n                                ALGORITMO DES DE CRIPTOGRAFIA");
	fprintf(orienta, "\n                              ----------- --- -- --------------");
	
	
	
	
	FILE * entrada;
	
	if((entrada = fopen(textoPuro, "r+b")) == NULL) {
		printf("\n\nErro ao abrir arquivo de entrada!!!\n");
		fprintf(orienta, "\n\nErro ao abrir arquivo de entrada!!!\n");
		exit(1);
	}
	
	
	
	int i, j;
	

	leChave(textoChave, key_hex, orienta);
	

	printf("\n\n\n	__SENHAS__\n"); 
	fprintf(orienta, "\n\n\n	__SENHAS__\n"); 
	
	for (i = 0; i < 3; i++) {

		for (j = 0; j < 16; j++) {
			printf("%c", key_hex[i][j]);
			fprintf(orienta, "%c", key_hex[i][j]);
		}
		printf("\n");
		fprintf(orienta, "\n");
	}

	printf("\n\n");
	fprintf(orienta, "\n\n");



	// ******************************************************* Input Plain Text ********************************************************
	//Recebe o texto a ser trabalhado
	if (acao == 'e' || acao == 'E') {	
		printf("\n\n\n	__TEXTO_PLANO__\n"); 
		fprintf(orienta, "\n\n\n	__TEXTO_PLANO__\n"); 
		
	} else 
		if (acao == 'd' || acao == 'D') {
			printf("\n\n\n	TEXTO CIFRADO\n"); 
			fprintf(orienta, "\n\n\n	TEXTO CIFRADO\n"); 
		} else 
			{
				printf("\n\nAc'a'o [%c] inva'lida!!!\n\tEscolha (E)ncriptar ou (D)escifrar.\n\n", acao);
				fprintf(orienta, "\n\nAc'a'o [%c] inva'lida!!!\n\tEscolha (E)ncriptar ou (D)escifrar.\n\n", acao);
				exit(1);
			}
	
	//Lê do arquivo o texto a ser trabalhado
	

	
	long tamArquivo = calcularTamanhoArquivo(entrada);
	
	unsigned char input[tamArquivo + 1], initial_hex[tamArquivo * 2 + 1], output[tamArquivo * 2 + 1];


	for (i = 0; i < tamArquivo + 2; i++) {
		input[i] = '\0';
		initial_hex[i] = '\0';
	}


	
	
	leArquivo(entrada, input, tamArquivo);
	

	fclose(entrada);



	int len;

	len = strlen(input);
	
	//printf("\n\n%d", len); 
	//printf("%s\n", input); 

	

	int k = 0, temp = 0, r = 0, x = 0;
	
	if (acao == 'e' || acao == 'E') {	
		printf("\nTexto Plano:\n");
		fprintf(orienta, "\nTexto Plano:\n");
		int flagCasaDecimal;
		
		for (i = 0; i < len; i++) {
			flagCasaDecimal = 0;
			//imprime o Texto recebido pelo usua'rio
			printf("%c", input[i]);
			fprintf(orienta, "%c", input[i]);

			//Transforma todo o texto lido em uma sequênca em Hexadecial que represente o mesmo
			if (input[i] / 16 == 0) {
				flagCasaDecimal = 1;
			}
			while (input[i]!= 0 && flagCasaDecimal == 1) {
				//Descobre o valor em hexadecimal do caractere
				r = input[i]%16; 
				input[i] = 0;

				if (r>9) {
					x = r-10; 
					r = 65+x; 
					initial_hex[k] = r; 
				}
				else
					initial_hex[k] = r+48; 
				
				initial_hex[++k] = '0';

				//Conta quantos caracteres foram convertidos - Varia'vel K
				k++; 
			}
			
			while (input[i]!= 0 && flagCasaDecimal == 0) {
				//Descobre o valor em hexadecimal do caractere
				r = input[i]%16; 
				input[i] = input[i]/16; 

				if (r>9) {
					x = r-10; 
					r = 65+x; 
					initial_hex[k] = r; 
				}
				else

				initial_hex[k] = r+48; 

				//Conta quantos caracteres foram convertidos - Varia'vel K
				k++; 
			}
		}
		printf("\n\n");
		fprintf(orienta, "\n\n");
		
			//inverte a cada dois caracteres
		for (i = 0; i < k; i = i+2) {
			temp = initial_hex[i]; 
			initial_hex[i] = initial_hex[i+1]; 
			initial_hex[i+1] = temp;
		}
		
		
		printf("%s\n", input);

		//Orienta o usua'rio informando o Texto Plano em Hexadecimal
		printf("Texto Hexad: ");
		fprintf(orienta, "Texto Hexad: ");

		/*for (i = 0; i  <  16; i++) {
			initial_hex[i] = input[i];
			printf("%c",initial_hex[i]);
			fprintf(orienta, "%c",initial_hex[i]);
		}
		*/

		for (i = 0; i  <  len * 2; i++) {
			//initial_hex[i] = input[i];
			printf("%c",initial_hex[i]);
			fprintf(orienta, "%c",initial_hex[i]);
		}
		k = i;


	} else if (acao == 'd' || acao == 'D') {
		printf("\nTexto Cifrado: ");
		fprintf(orienta, "\nTexto Cifrado: ");
	
		for (i = 0; i  <  len; i++) {
			initial_hex[i] = input[i];
			printf("%c",initial_hex[i]);
			fprintf(orienta, "%c",initial_hex[i]);
		}
		
		k = i;
	}



	printf("\n");
	fprintf(orienta, "\n");

	

	int d, e ,f;


	//Quantidade de caracteres por 16
	d = k/16; 
	//Resto da quantidade de caracteres por 16
	e = k%16; 
	f = 0; 
	
	
	unsigned char hex_arr[d][16];


		

	//O texto sera' trabalhado em pedac'os (blocos) com 16 caracteres.
		//Nesse pequeno procedimento, o Texto plano sera' dividino nesses blocos para que a criptografia seja feita em pedac'os do texto.
	for (i = 0; i <= d; i++) {
		//Verifica quantos blocos ainda faltam
		if (i < d) {
			//Coloca a sequência de caracteres numa matriz.
			for (j = 0; j <= 15; j++)
				hex_arr[i][j] = initial_hex[f++]; 
			
		} else {
			//Verifica se os blocos na'o possuem resto
			if (k%16 == 0)
					break; 
		
			else {
				//Se possuirem restos
					//Percore todos os 16 caracteres de cada bloco
				for (j = 0; j <= 15; j++) {
					// Enquanto houver caracteres no qual o usua'rio digitou, sera' adicionado a matriz.
					if (j < e)
							hex_arr[i][j] = initial_hex[f++]; 
					else {
						//Todos os outros espac'os restantes do bloco que na'o foi completado sera' adicionado 0 a matriz representando vazio/nulo
						hex_arr[i][j] = '0'; 
						hex_arr[i][++j] = '0'; 
					}
				}
			}
		}
	}



	if (k%16!= 0)
		d++; 

	//imprimindo na tela
	printf("\nBlocos Parciais Hexadecimais do Texto:\n"); 
	fprintf(orienta, "\nBlocos Parciais Hexadecimais do Texto:\n"); 
	for (i = 0; i < d; i++) {
		printf("\t%d - ", i);
		fprintf(orienta, "\t%d - ", i);

		for (j = 0; j <= 15; j++) {
			printf("%c",hex_arr[i][j]);
			fprintf(orienta, "%c",hex_arr[i][j]);  
		}

		printf("\n"); 
		fprintf(orienta, "\n"); 
	}

	
	

	char C[16][28], D[17][28], CD[15][56], K[15][48]; 
	unsigned char manipulaTexto1[d][16], manipulaTexto2[d][16], manipulaTexto3[d][16];

	
	if (acao == 'e' || acao == 'E') {

		chave(C, D, CD, K, orienta, key_hex[0]);

		for (i = 0; i < d; i++) {
			DES (hex_arr, i, manipulaTexto1, orienta, K);
			printf("\n\n\n\n\n");
			fprintf(orienta, "\n\n\n\n\n");
		}

		chave(C, D, CD, K, orienta, key_hex[1]);

		
		for (i = 0; i < d; i++) {
			DES (manipulaTexto1, i, manipulaTexto2, orienta, K);
			printf("\n\n\n\n\n");
			fprintf(orienta, "\n\n\n\n\n");
		}

		chave(C, D, CD, K, orienta, key_hex[2]);
		
		for (i = 0; i < d; i++) {
			DES (manipulaTexto2, i, manipulaTexto3, orienta, K);
			printf("\n\n\n\n\n");
			fprintf(orienta, "\n\n\n\n\n");
		}
		
	} else 
		if (acao == 'd' || acao == 'D') {

			chave(C, D, CD, K, orienta, key_hex[2]);

			for (i = 0; i < d; i++) {
				UnDES (hex_arr, i, manipulaTexto1, orienta, K);
				printf("\n\n\n\n\n");
				fprintf(orienta, "\n\n\n\n\n");
			}

			chave(C, D, CD, K, orienta, key_hex[1]);

			for (i = 0; i < d; i++) {
				UnDES (manipulaTexto1, i, manipulaTexto2, orienta, K);
				printf("\n\n\n\n\n");
				fprintf(orienta, "\n\n\n\n\n");
			}
			
			chave(C, D, CD, K, orienta, key_hex[0]);

			for (i = 0; i < d; i++) {
				UnDES (manipulaTexto2, i, manipulaTexto3, orienta, K);
				printf("\n\n\n\n\n");
				fprintf(orienta, "\n\n\n\n\n");
			}
		
		}



	if (acao == 'e' || acao == 'E') {
		printf ("\n\n\t__RESULTADO_DA_ENCRIPTAC'A'O_DO_TEXTO__"); 
		fprintf (orienta, "\n\n\t__RESULTADO_DA_ENCRIPTAC'A'O_DO_TEXTO__"); 

		copyResultado(d, manipulaTexto3, output);
		
		
		printf ("\n\nTexto Encriptado : "); 
		fprintf (orienta, "\n\nTexto Encriptado : "); 
		printf ("\n%s\n\n",output);
		fprintf (orienta, "\n%s\n\n",output);
		

		printf ("\n\nTexto Encriptado"); 
		fprintf (orienta, "\n\nTexto Encriptado" ); 
	}
	else

		if (acao == 'd' || acao == 'D') {
			printf ("\n\n\t__RESULTADO_DA_DESENCRIPTAC'A'O_DO_TEXTO__"); 
			fprintf (orienta, "\n\n\t__RESULTADO_DA_DESENCRIPTAC'A'O_DO_TEXTO__"); 

			
			hex_to_plain (manipulaTexto3, output, d); 
			
			
			printf ("\n\nTexto Descriptografado : "); 
			fprintf (orienta, "\n\nTexto Descriptografado : "); 
			printf ("\n%s\n\n",output);
			fprintf (orienta, "\n%s\n\n",output);
			

			printf ("\n\nTexto Descifrado"); 
			fprintf (orienta, "\n\nTexto Descifrado" ); 
		}

	arquivoResposta(output, textoSaida, orienta);

	printf (" -- Fim da execuc'a'o do algoritmo.\n"); 
	fprintf (orienta, " -- Fim da execuc'a'o do algoritmo." ); 


	fclose(orienta);

	return 0;
}
