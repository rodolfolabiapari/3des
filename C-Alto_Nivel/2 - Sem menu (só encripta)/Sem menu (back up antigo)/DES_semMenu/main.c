/*
* File:   main.c
* Author: Rodolfo
*
* Created on 26 de Janeiro de 2014, 15:50
*/
//dinâmico

 

//#include "constantes.h"
#include "funcoes.h"


void DES (char entrada[26][16],char key_bin[64], int indice, char cryptoOut[400], FILE * arquivo);


int main (int argc, char *argv[]) {

	FILE * orienta;
	
	if((orienta = fopen("orientacao.txt", "w")) == NULL) {
		printf("Erro ao criar arquivo de orientações!!!\n");
		exit(0);
	}
	
	printf("\n						ALGORITMO DES DE CRIPTOGRAFIA");
	printf("\n					  ----------- --- -- --------------");
	fprintf(orienta, "\n						ALGORITMO DES DE CRIPTOGRAFIA");
	fprintf(orienta, "\n					  ----------- --- -- --------------");
	
	
	/*if (argc != 4) {
			printf("\n\nEntrada de dados inválida!\n");
			exit(1);
	}
	*/
	FILE * entrada;
	
	if((entrada = fopen("entrada.txt", "r")) == NULL) {
		printf("\n\nErro ao abrir arquivo de entrada!!!\n");
		fprintf(orienta, "\n\nErro ao abrir arquivo de entrada!!!\n");
		exit(1);
	}
	
	
	
	
	char input[400], initial_hex[400], crypto1[400], crypto2[400], crypto3[400];
	int len = 0, i = 0, j = 0, k = 0, temp = 0, r = 0, x = 0;
	int d, e ,f ;
	char hex_arr[25][16];
	char key_plan[16], key_hex[16], key_bin[64];
	char acao = 'a';
 
	acao = 'c';
	
	

	//******************************************************* Input Plain Text ********************************************************
	//Recebe o texto a ser trabalhado
	if (acao == 'c' || acao == 'C') {	
		printf("\n\n\n	__TEXTO_PLANO__\n"); 
		fprintf(orienta, "\n\n\n	__TEXTO_PLANO__\n"); 
		
	} else if (acao == 'd' || acao == 'D') {
		printf("\n\n\n	TEXTO CIFRADO\n"); 
		fprintf(orienta, "\n\n\n	TEXTO CIFRADO\n"); 
	}
	
	
	//Lê do arquivo o texto a ser trabalhado
	while (!feof(entrada)) {
		input[i] = getc(entrada);
		i++;
	}
	//adiciona o fim da string
	input[--i] = '\0';

	
	fclose(entrada);

	//Transforma os caracteres do texto puro em uma sequência com apenas caracteres de caixa alta.
	//upper_char (input);

	len = strlen (input); 

	
	if (acao == 'c' || acao == 'C') {	
		printf("\nTexto Plano: ");
		fprintf(orienta, "\nTexto Plano: ");
		
		for (i = 0; i < len; i++)
		{
			//imprime o Texto recebido pelo usuário
			printf("%c", input[i]);
			fprintf(orienta, "%c", input[i]);

			//Transforma todo o texto lido em uma sequênca em Hexadecial que represente o mesmo
			while (input[i]!= 0)
			{
				//Descobre o valor em hexadecimal do caractere
				r = input[i]%16; 
				input[i] = input[i]/16; 

				if (r>9)
				{
					x = r-10; 
					r = 65+x; 
					initial_hex[k] = r; 
				}
				else

				initial_hex[k] = r+48; 

				//Conta quantos caracteres foram convertidos - Variável K
				k++; 
			}
		}
		printf("\n\n");
		fprintf(orienta, "\n\n");


			//inverte a cada dois caracteres
		for (i = 0; i < k; i = i+2)
		{
			temp = initial_hex[i]; 
			initial_hex[i] = initial_hex[i+1]; 
			initial_hex[i+1] = temp;
		}
		
		
		//Orienta o usuário informando o Texto Plano em Hexadecimal
		printf("Texto Hexad: ");
		fprintf(orienta, "Texto Hexad: ");
		for (i = 0; i  <  k; i++) {
				printf("%c",initial_hex[i]);
				fprintf(orienta, "%c",initial_hex[i]);
		}

	} else if (acao == 'd' || acao == 'D') {
		printf("\nTexto Cifrado: ");
		fprintf(orienta, "\nTexto Cifrado: ");
	
		for (i = 0; i  <  k; i++) {
			printf("%c",initial_hex[i]);
			fprintf(orienta, "%c",initial_hex[i]);
		}
	}
	
	printf("\n");
	fprintf(orienta, "\n");


	//Quantidade de caracteres por 16
	d = k/16; 
	//Resto da quantidade de caracteres por 16
	e = k%16; 
	f = 0; 


	//O texto será trabalhado em pedaços (blocos) com 16 caracteres.
		//Nesse pequeno procedimento, o Texto plano será dividino nesses blocos para que a criptografia seja feita em pedaços do texto.
	for (i = 0; i <= d; i++) {
		//Verifica quantos blocos ainda faltam
		if (i < d) {
			//Coloca a sequência de caracteres numa matriz.
			for (j = 0; j <= 15; j++)
				hex_arr[i][j] = initial_hex[f++]; 
			
		} else
			//Verifica se os blocos não possuem resto
			if (k%16 == 0)
					break; 
		
			else {
				//Se possuirem restos
					//Percore todos os 16 caracteres de cada bloco
				for (j = 0; j <= 15; j++) {
					// Enquanto houver caracteres no qual o usuário digitou, será adicionado a matriz.
					if (j < e)
							hex_arr[i][j] = initial_hex[f++]; 
					else
					{
						//Todos os outros espaços restantes do bloco que não foi completado será adicionado 0 a matriz representando vazio/nulo
						hex_arr[i][j] = '0'; 
						hex_arr[i][++j] = '0'; 
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






	//******************************************************* Key in Binary form***********************************

	printf("\n\n\n	__CHAVE__\n"); 	
	fprintf(orienta, "\n\n\n	__CHAVE__\n");
	//gets(key_plan); 
	key_plan[0] = '0';
	key_plan[1] = '1';
	key_plan[2] = '2';
	key_plan[3] = '3';

	//Torna todos os caracteres em caixa alta.
	upper_char (key_plan);

	
	len  =  strlen(key_plan);

	//Normaliza a chave. Ela deve ter 16 caracteres Hexadecimais. 
		//Caso o que for informado do usuário for menor, será completado com zeros.
	for (i = 0; i < 16; i++) {
		if (len > i) {
			key_hex[i] = key_plan[i];
		} else {
			//Completa com Zeros
			key_hex[i] = '0';
		} 
	}


	//Orientações para o usuário
	printf("\nChave em Hexadecimal: ");
	fprintf(orienta, "\nChave em Hexadecimal: ");  
	for (i = 0; i < 16; i++) {
		printf("%c",key_hex[i]);
		fprintf(orienta, "%c",key_hex[i]);  
	}

	//Copia a chave para a forma binária
	hex_to_bin (key_hex,key_bin);

	printf("\n\nChave em Binário	: ");
	fprintf(orienta, "\n\nChave em Binário	: ");  
	for (i = 0; i < 64; i++) {
			printf("%c",key_bin[i]);
			fprintf(orienta, "%c",key_bin[i]);
			if ( (i + 1) % 8 == 0 ) {
				printf(" ");
				fprintf(orienta, " ");
			}
	}

	printf("\n");
	fprintf(orienta, "\n");

	//pausa
	//printf("\n\nPress ENTER to continue: ");
	//gets(key_plan); 
	fflush(stdout);






	for (i = 0; i < d; i++) {	
			DES (hex_arr, key_bin, i, crypto1, orienta);
			printf("\n\n\n\n\n");
			fprintf(orienta, "\n\n\n\n\n");
	}
	//fprintf(arquivo, "FDES\n");


	printf ("\n\n__RESULTADO_DA_ENCRIPTAÇÃO_DO_TEXTO__"); 
	fprintf (orienta, "\n\n__RESULTADO_DA_ENCRIPTAÇÃO_DO_TEXTO__"); 

	printf ("\n\nTexto Encriptado : "); 
	fprintf (orienta, "\n\nTexto Encriptado : "); 
	printf ("\n%s\n\n",crypto1);
	fprintf (orienta, "\n%s\n\n",crypto1);

	fclose(orienta);
	
	printf ("\nFim da execução do algoritmo."); 
	fprintf (orienta, "\nTexto Encriptado."); 


	/*temp = i = k / 16;
	r = k % 16;

	if (r != 0) {
		temp ++; }

	printf("temp %d\n", temp);


	printf ("\n\n>Decrypted CRYPTO1: "); 
	printf ("%s\n\n",crypto1);



	DES (crypto1, temp * 16, crypto2);
	printf ("\n\n>Decrypted CRYPTO2: "); 
	printf ("%s\n\n",crypto2);

	DES (crypto2, temp * 16, crypto3);
	printf ("\n\n>Decrypted CRYPTO3: "); 
	printf ("%s\n\n",crypto3);


	printf ("\n\n>Decrypted Output in Hexadecimal again: "); 
	printf ("%s\n\n",crypto1); */
	return 0;
}



void DES (char entrada[26][16], char key_bin[64], int indice, char cryptoOut[400], FILE * arq)
{
	
	int i,j,len,m = 0; 
	//int d,e,f; k retirado
	//char initial_hex[400]
	//char hex_arr[25][16]; 
	
	char input_hex[16],input_bin[64]; 
	//char key_hex[16] = {'1', '3', '3', '4', '5', '7', '7', '9', '9', 'B', 'B', 'C', 'D', 'F', 'F', '2'};
	//char key_hex[16] = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'}; 
	char key_PC1[56]; 
	char ch,*decryption,*encryption,encryption_final[400],decryption_final_hex[400],decryption_final_plain[200]; 
	char encrypted[64],decrypted[64],encry_permut[64],decry_permut[64]; 
	int length,p = -1,q = -1; 
	
	char C0[28],D0[28],
	C1[28],D1[28],CD1[56],
	C2[28],D2[28],CD2[56],
	C3[28],D3[28],CD3[56],
	C4[28],D4[28],CD4[56],
	C5[28],D5[28],CD5[56],
	C6[28],D6[28],CD6[56],
	C7[28],D7[28],CD7[56],
	C8[28],D8[28],CD8[56],
	C9[28],D9[28],CD9[56],
	C10[28],D10[28],CD10[56],
	C11[28],D11[28],CD11[56],
	C12[28],D12[28],CD12[56],
	C13[28],D13[28],CD13[56],
	C14[28],D14[28],CD14[56],
	C15[28],D15[28],CD15[56],
	C16[28],D16[28],CD16[56]; 
	
	char L0[32],R0[32],ER0[48]; 
	char K1[48],L1[32],R1[32],ER1[48],F1[48],
	K2[48],L2[32],R2[32],ER2[48],F2[48],
	K3[48],L3[32],R3[32],ER3[48],F3[48],
	K4[48],L4[32],R4[32],ER4[48],F4[48],
	K5[48],L5[32],R5[32],ER5[48],F5[48],
	K6[48],L6[32],R6[32],ER6[48],F6[48],
	K7[48],L7[32],R7[32],ER7[48],F7[48],
	K8[48],L8[32],R8[32],ER8[48],F8[48],
	K9[48],L9[32],R9[32],ER9[48],F9[48],
	K10[48],L10[32],R10[32],ER10[48],F10[48],
	K11[48],L11[32],R11[32],ER11[48],F11[48],
	K12[48],L12[32],R12[32],ER12[48],F12[48],
	K13[48],L13[32],R13[32],ER13[48],F13[48],
	K14[48],L14[32],R14[32],ER14[48],F14[48],
	K15[48],L15[32],R15[32],ER15[48],F15[48],
	K16[48],L16[32],R16[32],ER16[48],F16[48]; 
	







	//******************************************************* Key in Binary form***********************************
	printf("\n\n\n\n--------------------------------------------------------------------------------\n\t__INÍCIO__\n\n"); 
	fprintf(arq, "\n\n\n\n--------------------------------------------------------------------------------\n\t__INÍCIO__\n\n"); 
	
		
	//******************************************************* Plain Text in Hex ***********************************
	//Será copiado o primeiro bloco para ser trabalhado.
			//A variável input_hex será responsável por receber todas as alterações no decorrer do programa
	for (i = 0; i < 16; i++)
		input_hex[i] = entrada[indice][i]; 

	//Orientações ao usuário 
	printf("Bloco de texto selecionado: %d - ", indice);
	fprintf(arq, "Bloco de texto selecionado: %d - ", indice);
	for (i = 0; i < 16; i++) {
		printf("%c",input_hex[i]); 
		fprintf(arq, "%c",input_hex[i]); 
	}
	printf("\n");
	fprintf(arq, "\n");

	//******************************************************* Plain Text in Binary ***********************************
	//Copia o texto para um formato binário
	hex_to_bin (input_hex,input_bin); 

	//imprimindo na tela	
	printf("\nBloco de texto em Binário : "); 
	fprintf(arq, "\nBloco de texto em Binário : "); 
	for (i = 0; i < 64; i++) {
			printf("%c",input_bin[i]);
			fprintf(arq, "%c",input_bin[i]);
			if ( (i + 1) % 8 == 0 ) {
				printf(" ");
				fprintf(arq, " ");
			}
	}



	//******************************************************* First Round of Permutation ***********************************

	//Realiza a Permutação Inicial da Chave
	permutation (key_bin,key_PC1);

	//imprimindo na tela
	printf("\n\n\n\n\n\t__PERMUTAÇÃO_INICIAL_DA_CHAVE__");
	fprintf(arq, "\n\n\n\n\n\t__PERMUTAÇÃO_INICIAL_DA_CHAVE__");


	printf("\n\nPrimeira Permutação da Chave: ");
	fprintf(arq, "\n\nPrimeira Permutação da Chave: ");  
	for (i = 0; i < 56; i++) {
			printf("%c",key_PC1[i]);
			fprintf(arq, "%c",key_PC1[i]);
			if ( (i + 1) % 7 == 0 ) {
					printf(" ");
					fprintf(arq, " ");
			}
	}


	printf("\n\n\n\n\n\t__ROTAÇÕES_DAS_CHAVES__"); 
	fprintf(arq, "\n\n\n\n\n\t__ROTAÇÕES_DAS_CHAVES__"); 
	//******************************************************** Shifting Begins **********************************************************************************
	//Divide a chave permutada em duas

	make_half (key_PC1,C0,D0); 

	printCD(C0, D0, '0', arq);


	//Deslocamento rotacional simples da Direita para a Esquerda
	single_shift (C0,C1); 
	single_shift (D0,D1); 

	printCD(C1, D1, '1', arq);

	//Deslocamento rotacional simples da Direita para a Esquerda
	single_shift (C1,C2); 
	single_shift (D1,D2); 


	printCD(C2, D2, '2', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C2,C3); 
	double_shift (D2,D3); 

	printCD(C3, D3, '3', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C3,C4); 
	double_shift (D3,D4); 

	printCD(C4, D4, '4', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C4,C5); 
	double_shift (D4,D5); 


	printCD(C5, D5, '5', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C5,C6); 
	double_shift (D5,D6); 


	printCD(C6, D6, '6', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C6,C7); 
	double_shift (D6,D7); 


	printCD(C7, D7, '7', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C7,C8); 
	double_shift (D7,D8); 


	printCD(C8, D8, '8', arq);

	//Deslocamento rotacional Simples da Direita para a Esquerda
	single_shift (C8,C9); 
	single_shift (D8,D9); 


	printCD(C9, D9, '9', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C9,C10); 
	double_shift (D9,D10); 


	printCD(C10, D10, 'A', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C10,C11); 
	double_shift (D10,D11); 


	printCD(C11, D11, 'B', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C11,C12); 
	double_shift (D11,D12); 


	printCD(C12, D12, 'C', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C12,C13); 
	double_shift (D12,D13); 


	printCD(C13, D13, 'D', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C13,C14); 
	double_shift (D13,D14); 


	printCD(C14, D14, 'E', arq);

	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C14,C15); 
	double_shift (D14,D15); 


	printCD(C15, D15, 'F', arq);


	//Deslocamento rotacional Simples da Direita para a Esquerda
	single_shift (C15,C16); 
	single_shift (D15,D16); 


	printCD(C16, D16, 'G', arq);



	//********************************* 16 Keys Generation Begins ********************************


			printf("\n\n\n\n\n\t__PERMUTAÇÕES_FINAIS_DAS_CHAVES__");
			fprintf(arq, "\n\n\n\n\n\t__PERMUTAÇÕES_FINAIS_DAS_CHAVES__");  

	make_key (C1,D1,CD1); 
	permutation_48 (CD1,K1); 


	printCDK (CD1, K1, '1', arq);

	make_key (C2,D2,CD2); 
	permutation_48 (CD2,K2); 


	printCDK (CD2, K2, '2', arq);

	make_key (C3,D3,CD3); 
	permutation_48 (CD3,K3); 

	printCDK (CD3, K3, '3', arq);

	make_key (C4,D4,CD4); 
	permutation_48 (CD4,K4); 

	printCDK (CD4, K4, '4', arq);

	make_key (C5,D5,CD5); 
	permutation_48 (CD5,K5); 

	printCDK (CD5, K5, '5', arq);

	make_key (C6,D6,CD6); 
	permutation_48 (CD6,K6); 

	printCDK (CD6, K6, '6', arq);

	make_key (C7,D7,CD7); 
	permutation_48 (CD7,K7); 

	printCDK (CD7, K7, '7', arq);

	make_key (C8,D8,CD8); 
	permutation_48 (CD8,K8); 

	printCDK (CD8, K8, '8', arq);

	make_key (C9,D9,CD9); 
	permutation_48 (CD9,K9); 

	printCDK (CD9, K9, '9', arq);

	make_key (C10,D10,CD10); 
	permutation_48 (CD10,K10); 

	printCDK (CD10, K10, 'A', arq);

	make_key (C11,D11,CD11); 
	permutation_48 (CD11,K11); 

	printCDK (CD11, K11, 'B', arq);

	make_key (C12,D12,CD12); 
	permutation_48 (CD12,K12); 

	printCDK (CD12, K12, 'C', arq);

	make_key (C13,D13,CD13); 
	permutation_48 (CD13,K13);

	printCDK (CD13, K13, 'D', arq);

	make_key (C14,D14,CD14); 
	permutation_48 (CD14,K14);

	printCDK (CD14, K14, 'E', arq);

	make_key (C15,D15,CD15); 
	permutation_48 (CD15,K15); 

	printCDK (CD15, K15, 'F', arq);

	make_key (C16,D16,CD16); 
	permutation_48 (CD16,K16);

	printCDK (CD16, K16, 'G', arq);



	//****************************** Initial Permutation of Plain Text ***********************************

	printf("\n\n\n\n\n\t__PERMUTAÇÃO_INICIAL_DO_TEXTO_PURO__");
	fprintf(arq, "\n\n\n\n\n\t__PERMUTAÇÃO_INICIAL_DO_TEXTO_PURO__");

	//Realiza a Permutação inicial para a as 16 iterações quer ocorreção do do texto
	permutation_64 (input_bin,L0,R0); 


	printf("\n\nResultado da permutação inicial:");
	fprintf(arq, "\n\nResultado da Permutação inicial:");


	printLiRi(L0, R0, '0', arq);


	//****************************** 16 Rounds of Encryption ***********************************


	printf ("\n\n\n\n\n\t__16_ITERAÇÕES_SOBRE_O_TEXTO_PURO__\n"); 
	fprintf (arq, "\n\n\n\n\n\t__16_ITERAÇÕES_SOBRE_O_TEXTO_PURO__\n"); 
	//Uma iteração
	printLiRi(L0, R0, '0', arq);
	des_round (arq, L1,R1,L0,R0,ER0,K1,F1, '0'); 





	printLiRi(L1, R1, '1', arq);


	des_round (arq, L2,R2,L1,R1,ER1,K2,F2, '1'); 

	printLiRi(L2, R2, '2', arq);



	des_round (arq, L3,R3,L2,R2,ER2,K3,F3, '2'); 

	printLiRi(L3, R3, '3', arq);



	des_round (arq, L4,R4,L3,R3,ER3,K4,F4, '3'); 

	printLiRi(L4, R4, '4', arq);



	des_round (arq, L5,R5,L4,R4,ER4,K5,F5, '4'); 

	printLiRi(L5, R5, '5', arq);


	des_round (arq, L6,R6,L5,R5,ER5,K6,F6, '5'); 

	printLiRi(L6, R6, '6', arq);



	des_round (arq, L7,R7,L6,R6,ER6,K7,F7, '6'); 

	printLiRi(L7, R7, '7', arq);


	des_round (arq, L8,R8,L7,R7,ER7,K8,F8, '7'); 

	printLiRi(L8, R8, '8', arq);



	des_round (arq, L9,R9,L8,R8,ER8,K9,F9, '8'); 

	printLiRi(L9, R9, '9', arq);


	des_round (arq, L10,R10,L9,R9,ER9,K10,F10, '9'); 

	printLiRi(L10, R10, 'A', arq);


	des_round (arq, L11,R11,L10,R10,ER10,K11,F11, 'A'); 

	printLiRi(L11, R11, 'B', arq);



	des_round (arq, L12,R12,L11,R11,ER11,K12,F12, 'B');

	printLiRi(L12, R12, 'C', arq);


	des_round (arq, L13,R13,L12,R12,ER12,K13,F13, 'C');

	printLiRi(L13, R13, 'D', arq);



	des_round (arq, L14,R14,L13,R13,ER13,K14,F14, 'D');

	printLiRi(L14, R14, 'E', arq);



	des_round (arq, L15,R15,L14,R14,ER14,K15,F15, 'E') ;

	printLiRi(L15, R15, 'F', arq);



	des_round (arq, L16,R16,L15,R15,ER15,K16,F16, 'F') ;

	printLiRi(L16, R16, 'G', arq);



	//****************************************************** Final permutation **********************************

	//Orientações ao usuário
	printf ("\n\n\n\n\n\t__PERMUTAÇÃO_FINAL_DO_TEXTO__"); 
	fprintf (arq, "\n\n\n\n\n\t__PERMUTAÇÃO_FINAL_DO_TEXTO__"); 

	//Copia o resultado das criptografias (L16 e R16) para uma string final no qual será realizada mais uma permutação.
	for (i = 0; i < 32; i++) {
			encrypted[i] = R16[i]; 
			encrypted[i+32] = L16[i]; 
	}

	//Realiza a última permutação do texto puro.
	common_permutation (encrypted,encry_permut); 

	printf("\n\nBloco de texto selecionado: %d - ", indice);
	fprintf(arq, "\n\nBloco de texto selecionado: %d - ", indice);
	for (i = 0; i < 16; i++) {
		printf("%c",input_hex[i]); 
		fprintf(arq, "%c",input_hex[i]); 
	}

	//imprimindo na tela	 
	printf ("\n\nTexto Binário Encriptado desta Iteração: \n"); 
	fprintf(arq, "\n\nTexto Binário Encriptado desta Iteração: \n"); 

	for (i = 0; i < 64; i++) {
		printf ("%c",input_bin[i]);
		fprintf(arq, "%c",input_bin[i]); 

		if ( (i + 1) % 8 == 0 ) {
			printf(" ");
			fprintf(arq, " "); 
		}
		if ( (i + 1) % 32 == 0 ) {
			printf(" ");
			fprintf(arq, " "); 
		}
	}

	//Converte o texto a forma Hexadecimal para uma visualização curta e mais fácil
	encryption = bin_to_hex (encry_permut); 


	printf ("\n\nTexto Hexadecimal Encriptado desta Iteração: \n"); 
	fprintf (arq, "\n\nTexto Hexadecimal Encriptado desta Iteração: \n"); 
	for (i = 0; i < 16; i++) {
		encryption_final[++p] = * (encryption+i); 
		printf ("%c",encryption_final[p]);
		fprintf (arq, "%c", encryption_final[p]);
	}
		
	encryption_final[p+1] = '\0'; 
	
	for (i = 0; i < 16; i++) {
		cryptoOut[i + (indice * 16)] = encryption_final[i];
	} 
}