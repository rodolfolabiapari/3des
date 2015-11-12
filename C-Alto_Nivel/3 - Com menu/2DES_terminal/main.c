/*
* File:   main.c
* Author: Rodolfo
*
* Created on 26 de Janeiro de 2014, 15:50
*/
//dinâmico

 

//#include "constantes.h"
#include "funcoes.h"


void chave(char C[16][28], char D[16][28], char CD[15][56], char K[15][48], FILE * arq, char * nomeArquivo) {
	
	int i, len;
	char key_plan[16], key_hex[16], key_bin[64], key_PC1[56];
	FILE * entrada;
	//******************************************************* Key in Binary form***********************************
	
	printf("\n\n\n	__CHAVE__\n"); 	
	fprintf(arq, "\n\n\n	__CHAVE__\n");
	
	
	if((entrada = fopen(nomeArquivo, "r")) == NULL) {
		printf("\n\nErro ao abrir arquivo de entrada da senha!!!\n");
		fprintf(arq, "\n\nErro ao abrir arquivo de entrada da senha!!!\n");
		exit(1);
	}
	
	//Lê do arquivo o texto a ser trabalhado
	i = 0;
	while (!feof(entrada) && i < 16) {
		
		key_plan[i] = getc(entrada);
		i++;
	}
	
	//Verifica se é o caractere final de arquivo na última posição inserida na string
	if (key_plan[--i] == '\377')
		key_plan[i] = '\0';
	else
		//Caso contrário verifica se a chave descrita no texto Excede o valor padrão
			//Se sim, aborta o programa
		if (!feof(entrada) && i == 15) {
			getc(entrada);
			if (!feof(entrada)) {
				printf("\n\nTamanho da chave excede o valor padrão!!!\n");
				fprintf(arq, "\n\nTamanho da chave excede o valor padrão!!!\n");
				exit(1);
			}
		}
	
	fclose(entrada);

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
	fprintf(arq, "\nChave em Hexadecimal: ");  
	for (i = 0; i < 16; i++) {
		printf("%c",key_hex[i]);
		fprintf(arq, "%c",key_hex[i]);  
	}

	//Copia a chave para a forma binária
	hex_to_bin (key_hex,key_bin);

	printf("\n\nChave em Binário	: ");
	fprintf(arq, "\n\nChave em Binário	: ");  
	for (i = 0; i < 64; i++) {
			printf("%c",key_bin[i]);
			fprintf(arq, "%c",key_bin[i]);
			if ( (i + 1) % 8 == 0 ) {
				printf(" ");
				fprintf(arq, " ");
			}
	}

	printf("\n");
	fprintf(arq, "\n");




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

	make_half (key_PC1,C[0],D[0]); 

	printCD(C[0], D[0], '0', arq);


	//Deslocamento rotacional simples da Direita para a Esquerda
	single_shift (C[0],C[1]); 
	single_shift (D[0],D[1]); 

	printCD(C[1], D[1], '1', arq);

	//Deslocamento rotacional simples da Direita para a Esquerda
	single_shift (C[1],C[2]); 
	single_shift (D[1],D[2]); 


	printCD(C[2], D[2], '2', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[2],C[3]); 
	double_shift (D[2],D[3]); 

	printCD(C[3], D[3], '3', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[3],C[4]); 
	double_shift (D[3],D[4]); 

	printCD(C[4], D[4], '4', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[4],C[5]); 
	double_shift (D[4],D[5]); 


	printCD(C[5], D[5], '5', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[5],C[6]); 
	double_shift (D[5],D[6]); 


	printCD(C[6], D[6], '6', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[6],C[7]); 
	double_shift (D[6],D[7]); 


	printCD(C[7], D[7], '7', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[7],C[8]); 
	double_shift (D[7],D[8]); 


	printCD(C[8], D[8], '8', arq);

	//Deslocamento rotacional Simples da Direita para a Esquerda
	single_shift (C[8],C[9]); 
	single_shift (D[8],D[9]); 


	printCD(C[9], D[9], '9', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[9],C[10]); 
	double_shift (D[9],D[10]); 


	printCD(C[10], D[10], 'A', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[10],C[11]); 
	double_shift (D[10],D[11]); 


	printCD(C[11], D[11], 'B', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[11],C[12]); 
	double_shift (D[11],D[12]); 


	printCD(C[12], D[12], 'C', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[12],C[13]); 
	double_shift (D[12],D[13]); 


	printCD(C[13], D[13], 'D', arq);


	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[13],C[14]); 
	double_shift (D[13],D[14]); 


	printCD(C[14], D[14], 'E', arq);

	//Deslocamento rotacional Duplo da Direita para a Esquerda
	double_shift (C[14],C[15]); 
	double_shift (D[14],D[15]); 


	printCD(C[15], D[15], 'F', arq);


	//Deslocamento rotacional Simples da Direita para a Esquerda
	single_shift (C[15],C[16]); 
	single_shift (D[15],D[16]); 


	printCD(C[16], D[16], 'G', arq);


	//********************************* 16 Keys Generation Begins ********************************


			printf("\n\n\n\n\n\t__PERMUTAÇÕES_FINAIS_DAS_CHAVES__");
			fprintf(arq, "\n\n\n\n\n\t__PERMUTAÇÕES_FINAIS_DAS_CHAVES__");  

	make_key (C[1],D[1],CD[0]); 
	permutation_48 (CD[0],K[0]); 


	printCDK (CD[0], K[0], '1', arq);

	make_key (C[2],D[2],CD[1]); 
	permutation_48 (CD[1],K[1]); 


	printCDK (CD[1], K[1], '2', arq);

	make_key (C[3],D[3],CD[2]); 
	permutation_48 (CD[2],K[2]); 

	printCDK (CD[2], K[2], '3', arq);

	make_key (C[4],D[4],CD[3]); 
	permutation_48 (CD[3],K[3]); 

	printCDK (CD[3], K[3], '4', arq);

	make_key (C[5],D[5],CD[4]); 
	permutation_48 (CD[4],K[4]); 

	printCDK (CD[4], K[4], '5', arq);

	make_key (C[6],D[6],CD[5]); 
	permutation_48 (CD[5],K[5]); 

	printCDK (CD[5], K[5], '6', arq);

	make_key (C[7],D[7],CD[6]); 
	permutation_48 (CD[6],K[6]); 

	printCDK (CD[6], K[6], '7', arq);

	make_key (C[8],D[8],CD[7]); 
	permutation_48 (CD[7],K[7]); 

	printCDK (CD[7], K[7], '8', arq);

	make_key (C[9],D[9],CD[8]); 
	permutation_48 (CD[8],K[8]); 

	printCDK (CD[8], K[8], '9', arq);

	make_key (C[10],D[10],CD[9]); 
	permutation_48 (CD[9],K[9]); 

	printCDK (CD[9], K[9], 'A', arq);

	make_key (C[11],D[11],CD[10]); 
	permutation_48 (CD[10],K[10]); 

	printCDK (CD[10], K[10], 'B', arq);

	make_key (C[12],D[12],CD[11]); 
	permutation_48 (CD[11],K[11]); 

	printCDK (CD[11], K[11], 'C', arq);

	make_key (C[13],D[13],CD[12]); 
	permutation_48 (CD[12],K[12]);

	printCDK (CD[12], K[12], 'D', arq);

	make_key (C[14],D[14],CD[13]); 
	permutation_48 (CD[13],K[13]);

	printCDK (CD[13], K[13], 'E', arq);

	make_key (C[15],D[15],CD[14]); 
	permutation_48 (CD[14],K[14]); 

	printCDK (CD[14], K[14], 'F', arq);

	make_key (C[16],D[16],CD[15]);	
	permutation_48 (CD[15],K[15]);

	printCDK (CD[15], K[15], 'G', arq);

}

void DES (char entrada[26][16], int indice, char cryptoOut[400], FILE * arq, char K[15][48]) {
	
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
	
	//char C[16][28], D[16][28], CD[15][56], K[15][48];
	
	char L0[32],R0[32],ER0[48]; 
	char L1[32],R1[32],ER1[48],F1[48],
	L2[32],R2[32],ER2[48],F2[48],
	L3[32],R3[32],ER3[48],F3[48],
	L4[32],R4[32],ER4[48],F4[48],
	L5[32],R5[32],ER5[48],F5[48],
	L6[32],R6[32],ER6[48],F6[48],
	L7[32],R7[32],ER7[48],F7[48],
	L8[32],R8[32],ER8[48],F8[48],
	L9[32],R9[32],ER9[48],F9[48],
	L10[32],R10[32],ER10[48],F10[48],
	L11[32],R11[32],ER11[48],F11[48],
	L12[32],R12[32],ER12[48],F12[48],
	L13[32],R13[32],ER13[48],F13[48],
	L14[32],R14[32],ER14[48],F14[48],
	L15[32],R15[32],ER15[48],F15[48],
	L16[32],R16[32],ER16[48],F16[48]; 
	







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
	des_round (arq, L1,R1,L0,R0,ER0,K[0],F1, '0'); 





	printLiRi(L1, R1, '1', arq);


	des_round (arq, L2,R2,L1,R1,ER1,K[1],F2, '1'); 

	printLiRi(L2, R2, '2', arq);



	des_round (arq, L3,R3,L2,R2,ER2,K[2],F3, '2'); 

	printLiRi(L3, R3, '3', arq);



	des_round (arq, L4,R4,L3,R3,ER3,K[3],F4, '3'); 

	printLiRi(L4, R4, '4', arq);



	des_round (arq, L5,R5,L4,R4,ER4,K[4],F5, '4'); 

	printLiRi(L5, R5, '5', arq);


	des_round (arq, L6,R6,L5,R5,ER5,K[5],F6, '5'); 

	printLiRi(L6, R6, '6', arq);



	des_round (arq, L7,R7,L6,R6,ER6,K[6],F7, '6'); 

	printLiRi(L7, R7, '7', arq);


	des_round (arq, L8,R8,L7,R7,ER7,K[7],F8, '7'); 

	printLiRi(L8, R8, '8', arq);



	des_round (arq, L9,R9,L8,R8,ER8,K[8],F9, '8'); 

	printLiRi(L9, R9, '9', arq);


	des_round (arq, L10,R10,L9,R9,ER9,K[9],F10, '9'); 

	printLiRi(L10, R10, 'A', arq);


	des_round (arq, L11,R11,L10,R10,ER10,K[10],F11, 'A'); 

	printLiRi(L11, R11, 'B', arq);



	des_round (arq, L12,R12,L11,R11,ER11,K[11],F12, 'B');

	printLiRi(L12, R12, 'C', arq);


	des_round (arq, L13,R13,L12,R12,ER12,K[12],F13, 'C');

	printLiRi(L13, R13, 'D', arq);



	des_round (arq, L14,R14,L13,R13,ER13,K[13],F14, 'D');

	printLiRi(L14, R14, 'E', arq);



	des_round (arq, L15,R15,L14,R14,ER14,K[14],F15, 'E') ;

	printLiRi(L15, R15, 'F', arq);



	des_round (arq, L16,R16,L15,R15,ER15,K[15],F16, 'F') ;

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
	cryptoOut[i + (indice * 16)] = '\0';
}


void UnDES (char entrada[26][16], int indice, char cryptoOut[400], FILE * arq, char K[15][48]){
	
	
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
	
	//char C[16][28], D[16][28], CD[15][56], K[15][48];
	
	char L0[32],R0[32],ER0[48]; 
	char L1[32],R1[32],ER1[48],F1[48],
	L2[32],R2[32],ER2[48],F2[48],
	L3[32],R3[32],ER3[48],F3[48],
	L4[32],R4[32],ER4[48],F4[48],
	L5[32],R5[32],ER5[48],F5[48],
	L6[32],R6[32],ER6[48],F6[48],
	L7[32],R7[32],ER7[48],F7[48],
	L8[32],R8[32],ER8[48],F8[48],
	L9[32],R9[32],ER9[48],F9[48],
	L10[32],R10[32],ER10[48],F10[48],
	L11[32],R11[32],ER11[48],F11[48],
	L12[32],R12[32],ER12[48],F12[48],
	L13[32],R13[32],ER13[48],F13[48],
	L14[32],R14[32],ER14[48],F14[48],
	L15[32],R15[32],ER15[48],F15[48],
	L16[32],R16[32],ER16[48],F16[48]; 
	



	



		
		//******************************************************* Plain Text in Hex ***********************************
		//Será copiado o primeiro bloco para ser trabalhado.
			//A variável input_hex será responsável por receber todas as alterações no decorrer do programa
		for (i = 0; i < 16; i++)
			input_hex[i] = entrada[indice][i]; 

		//Orientações ao usuário 
		//imprimindo na tela
		printf("Plain Text Selected in Hex: ");
		for (i = 0; i < 16; i++)
			printf("%c",input_hex[i]); 
		printf("\n");

		
		//******************************************************* Plain Text in Binary ***********************************
		//Copia o texto para um formato binário
		hex_to_bin (input_hex,input_bin); 

		//imprimindo na tela	
		printf("\n"); 
		printf("Plain Text Binary: "); 
		for (i = 0; i < 64; i++) {
			printf("%c",input_bin[i]);
			if ( (i + 1) % 8 == 0 ) 
				printf(" ");
		}



		//****************************** Initial Permutation of Plain Text ***********************************
		
	
		printf("\n\n\n    INITIAL PERMUTATION PLAIN TEXT\n");
		fprintf(arq, "\n\n\n    INITIAL PERMUTATION PLAIN TEXT\n");  

		//Realiza a Permutação inicial para a as 16 iterações quer ocorreção do do texto
		permutation_64 (input_bin,L16,R16); 


		printf ("\n\n\n");
		printf ("    16 ROUNDS\n"); 
		fprintf(arq, "\n\n\n    16 ROUNDS\n");  
		//Uma iteração

		

                /*
		//****************************************************** Final permutation **********************************	
		//Orientações ao usuário
		printf ("\n\n\n");
		printf ("    FINAL PERMUTATION PLAIN TEXT\n"); 
		//fprintf(arq, "\n\n\n    FINAL PERMUTATION PLAIN TEXT\n");  

		//Copia o resultado das criptografias (L16 e R16) para uma string final no qual será realizada mais uma permutação.
		for (i = 0; i < 32; i++)
		{
			encrypted[i] = R16[i]; 
			encrypted[i+32] = L16[i]; 
		}


		//Realiza a última permutação do texto puro.
		common_permutation (encrypted,encry_permut); 
		//encry_permut[64] = '\0';


		//imprimindo na tela	
		printf ("\n"); 
		printf ("Encrypted Text Binary in this Round: "); 
		fprintf(arq, "\nEncrypted Text Binary in this Round: "); 
		for (i = 0; i < 64; i++) {
		printf ("%c",input_bin[i]);
		fprintf(arq, "%c",input_bin[i]); 
			if ( (i + 1) % 8 == 0 ) {
				printf(" ");
				fprintf(arq, " "); 
			}
		}

		
		//Converte o texto a forma Hexadecimal para uma visualização curta e mais fácil
		encryption = bin_to_hex (encry_permut); 
	
	
		/*printf ("\n\n\n\n");
		printf ("Plain Text in Hex: ");
		for (i = 0; i  <  k; i++)
			printf ("%c",initial_hex[i]);
		printf ("\n");*/
	
		/*printf ("Key in Hexadecimal used for encryption: "); 
		for (i = 0; i < 16; i++)
		printf ("%c",key_hex[i]); 
		printf ("\n\n\n");*/

                /*s
		printf ("!>>>PARTIAL ENCRYPTED TEXT: ");
		for (i = 0; i < 16; i++) {
			encryption_final[++p] = * (encryption+i); 
			//encryption_final1[i] = * (encryption+i); 
			printf ("%c",encryption_final[p]); 
		}
		printf ("\n\n\n\n");
                */





	//****************************************************** 16 Rounds of Decryption **********************************
	
		printLiRi(L16, R16, 'G', arq);

                des_round_decry (L16,R16,L15,R15,ER15,K[15],F16); 
		
        
		printLiRi(L15, R15, 'F', arq);



                des_round_decry (L15,R15,L14,R14,ER14,K[14],F15); 
		printLiRi(L14, R14, 'E', arq);

					


                des_round_decry (L14,R14,L13,R13,ER13,K[13],F14); 
		
		printLiRi(L13, R13, 'D', arq);


		    

                des_round_decry (L13,R13,L12,R12,ER12,K[12],F13); 
		    
		printLiRi(L12, R12, 'C', arq);




	des_round_decry (L12,R12,L11,R11,ER11,K[11],F12); 
	
		printLiRi(L11, R11, 'B', arq);




	des_round_decry (L11,R11,L10,R10,ER10,K[10],F11); 
		
		printLiRi(L10, R10, 'A', arq);




	des_round_decry (L10,R10,L9,R9,ER9,K[9],F10); 
	
		printLiRi(L9, R9, '9', arq);




	des_round_decry (L9,R9,L8,R8,ER8,K[8],F9); 
		
		printLiRi(L8, R8, '8', arq);




	des_round_decry (L8,R8,L7,R7,ER7,K[7],F8); 
		
		printLiRi(L7, R7, '7', arq);




	des_round_decry (L7,R7,L6,R6,ER6,K[6],F7); 
		
		printLiRi(L6, R6, '6', arq);




	des_round_decry (L6,R6,L5,R5,ER5,K[5],F6); 
		
		printLiRi(L5, R5, '5', arq);




	des_round_decry (L5,R5,L4,R4,ER4,K[4],F5); 
		
		printLiRi(L4, R4, '4', arq);




	des_round_decry (L4,R4,L3,R3,ER3,K[3],F4); 
		
		printLiRi(L3, R3, '3', arq);



	des_round_decry (L3,R3,L2,R2,ER2,K[2],F3); 
		
		printLiRi(L2, R2, '2', arq);




	des_round_decry (L2,R2,L1,R1,ER1,K[1],F2); 
		
		printLiRi(L1, R1, '1', arq);




	des_round_decry (L1,R1,L0,R0,ER0,K[0],F1); 
		
		printLiRi(L0, R0, '0', arq);



	for (i = 0; i < 32; i++)
	{
		decrypted[i] = R0[i]; 
		decrypted[i+32] = L0[i]; 
	}
	common_permutation (decrypted,decry_permut); 
	//decry_permut[64] = '\0'; 
	
	decryption = bin_to_hex (decry_permut); 
	// printf ("%s\n",decryption); 
	
	printf ("\n\nTexto Hexadecimal Descriptografado desta Iteração: \n"); 
	fprintf (arq, "\n\nTexto Hexadecimal Descriptografado desta Iteração: \n"); 
	for (i = 0; i < 16; i++) {
		decryption_final_hex[++q] = * (decryption+i); 
		printf ("%c",decryption_final_hex[q]);
		fprintf (arq, "%c", decryption_final_hex[q]);
	}
	
	decryption_final_hex[q+1] = '\0'; 
	
	for (i = 0; i < 16; i++) {
		cryptoOut[i + (indice * 16)] = decryption_final_hex[i];
	} 
	


	hex_to_plain (decryption_final_hex,decryption_final_plain,q+1); 
	
	printf ("\n\nTexto Plano Descriptografado desta Iteração: "); 
	fprintf (arq, "\n\nTexto Plano Descriptografado desta Iteração: "); 
	printf ("%s\n",decryption_final_plain); 
	fprintf (arq, "%s\n",decryption_final_plain); 
}


int main (int argc, char *argv[]) {

	printf("\n						ALGORITMO DES DE CRIPTOGRAFIA");
	printf("\n					  ----------- --- -- --------------");
	
	
	/*//nomeDoPrograma acao chave texto saida
	if (argc != 5) {
		printf("\n\nEntrada de dados inválida!");
		printf("%d", argc);
		printf("\n\tNomeDoPrograma acao chave texto saida\n\n\n" );
		
		exit(1);
	}

	char acao = argv[1][0];
	char * textoChave = argv[2];
	char * textoPuro = argv[3];
	char * textoSaida = argv[4];*/
	
	
	/*char acao = 'e';
	char * textoChave = "senha.txt";
	char * textoPuro = "entrada.txt";
	char * textoSaida = "out.txt";*/
	
	
	char acao = 'd';
	char * textoChave = "senha.txt";
	char * textoPuro = "out.txt";
	char * textoSaida = "out2.txt";
	
	FILE * orienta;
	
	if ((orienta = fopen("RelatorioDeExecucao.txt", "w")) == NULL) {
		printf("Erro ao criar arquivo de orientações!!!\n");
		exit(1);
	}
	
	fprintf(orienta, "\n						ALGORITMO DES DE CRIPTOGRAFIA");
	fprintf(orienta, "\n					  ----------- --- -- --------------");
	
	
	
	FILE * entrada;
	
	if((entrada = fopen(textoPuro, "r")) == NULL) {
		printf("\n\nErro ao abrir arquivo de entrada!!!\n");
		fprintf(orienta, "\n\nErro ao abrir arquivo de entrada!!!\n");
		exit(1);
	}
	
	
	
	char input[400], initial_hex[400], crypto1[400], crypto2[400], crypto3[400];
	char key_PC1[56], C[16][28], D[17][28], CD[15][56], K[15][48]; FILE * arq;
	int len = 0, i = 0, j = 0, k = 0, temp = 0, r = 0, x = 0;
	int d, e ,f ;
	char hex_arr[25][16];
	
	
	


	//******************************************************* Input Plain Text ********************************************************
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
				printf("\n\nAção [%c] inválida!!!\n\tEscolha (E)ncriptar ou (D)escifrar.\n\n", acao);
				fprintf(orienta, "\n\nAção [%c] inválida!!!\n\tEscolha (E)ncriptar ou (D)escifrar.\n\n", acao);
				exit(1);
			}
	
	//Lê do arquivo o texto a ser trabalhado
	while (!feof(entrada)) {
		input[i] = getc(entrada);
		printf("%c\n", input[i]);
		i++;
	}
	//adiciona o fim da string
	input[--i -1] = '\0';

	
	fclose(entrada);

	//Transforma os caracteres do texto puro em uma sequência com apenas caracteres de caixa alta.
	//upper_char (input);

	len = strlen (input);
	printf("%d", len); 

	
	if (acao == 'e' || acao == 'E') {	
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
	
		for (i = 0; i  <  len; i++) {
			initial_hex[i] = input[i];
			printf("%c",initial_hex[i]);
			fprintf(orienta, "%c",initial_hex[i]);
		}
		
		k = i;
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

	chave(C, D, CD, K, orienta, textoChave);
	
	
	if (acao == 'e' || acao == 'E') 
		for (i = 0; i < d; i++) {	
			DES (hex_arr, i, crypto1, orienta, K);
			printf("\n\n\n\n\n");
			fprintf(orienta, "\n\n\n\n\n");
		}
	else
		if (acao == 'd' || acao == 'D')
			for (i = 0; i < d; i++) {	
				UnDES (hex_arr, i, crypto1, orienta, K);
				printf("\n\n\n\n\n");
				fprintf(orienta, "\n\n\n\n\n");
			}
	//fprintf(arquivo, "FDES\n");


	
	if (acao == 'e' || acao == 'E') {
		printf ("\n\n__RESULTADO_DA_ENCRIPTAÇÃO_DO_TEXTO__"); 
		fprintf (orienta, "\n\n__RESULTADO_DA_ENCRIPTAÇÃO_DO_TEXTO__"); 

		printf ("\n\nTexto Encriptado : "); 
		fprintf (orienta, "\n\nTexto Encriptado : "); 
		printf ("\n%s\n\n",crypto1);
		fprintf (orienta, "\n%s\n\n",crypto1);

		arquivoResposta(crypto1, textoSaida, orienta);
		
		fclose(orienta);

		printf ("\n\nFim da execução do algoritmo -- Texto Encriptado.\n\n"); 
		fprintf (orienta, "\n\nFim da execução do algoritmo -- Texto Encriptado.\n\n" ); 
	}
	else
		if (acao == 'd' || acao == 'D') {
			/*
	hex_to_plain (decryption_final_hex,decryption_final_plain,q+1); 
	
	printf ("\n\nTexto Plano Descriptografado desta Iteração: "); 
	fprintf (arq, "\n\nTexto Plano Descriptografado desta Iteração: "); 
	printf ("%s\n",decryption_final_plain); 
	fprintf (arq, "%s\n",decryption_final_plain); */
			printf ("\n\n\t__RESULTADO_DA_DESENCRIPTAÇÃO_DO_TEXTO__"); 
			fprintf (orienta, "\n\n\t__RESULTADO_DA_DESENCRIPTAÇÃO_DO_TEXTO__"); 

			
			hex_to_plain (crypto1,crypto1, i * 16); 
			
			printf ("\n\nTexto Descriptografado : "); 
			fprintf (orienta, "\n\nTexto Descriptografado : "); 
			printf ("\n%s\n\n",crypto1);
			fprintf (orienta, "\n%s\n\n",crypto1);

			arquivoResposta(crypto1, textoSaida, orienta);
			
			fclose(orienta);

			printf ("\n\nFim da execução do algoritmo -- Texto Descifrado.\n\n"); 
			fprintf (orienta, "\n\nFim da execução do algoritmo -- Texto Descifrado.\n\n" ); 
		}
		
	
	
	/*temp = i = k / 16;
	r = k % 16;

	if (r != 0) {
		temp ++; }

	printf("temp %d\n", temp);


	printf ("\n\n>Decrypted CRYPTO1: "); 
	printf ("%s\n\n",crypto1);

	 * 


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
