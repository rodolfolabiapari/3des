#include "funcoes.h"

void chave(char C[16][28], char D[16][28], char CD[15][56], char K[15][48], FILE * arq, char key_hex[16]) {
	
	int i;
	char key_bin[64], key_PC1[56];




	printf("\n\n\n	__CHAVE__\n"); 	
	fprintf(arq, "\n\n\n	__CHAVE__\n");
	
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


