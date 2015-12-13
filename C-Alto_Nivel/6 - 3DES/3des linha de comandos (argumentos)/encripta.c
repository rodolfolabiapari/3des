#include "funcoes.h"

void DES (char entrada[][16], int indice, char cryptoOut[][16], FILE * arq, char K[15][48]) {
	
	int i,j,len,m = 0; 
	
	char input_hex[16],input_bin[64]; 
	char key_PC1[56]; 
	char ch,*decryption,*encryption; 
	char encrypted[64],decrypted[64],encry_permut[64],decry_permut[64]; 
	int length,p = -1,q = -1; 
	
	
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

	
	
	
	
	//Realiza a Ãºltima permutação do texto puro.
	common_permutation (encrypted,encry_permut); 

	printf ("\n\nPré-Permutação: "); 
	fprintf (arq, "\n\nPré-Permutação: "); 
	for (i = 0; i < 64; i++) {
		printf ("%c", encrypted[i]); 
		fprintf (arq,"%c", encrypted[i]); 
	}
	
	printf ("\n\nPós-Permutação: "); 
	fprintf (arq, "\n\nPós-Permutação: ");
	for (i = 0; i < 64; i++) {
		printf ("%c", encry_permut[i]); 
		fprintf (arq,"%c", encry_permut[i]); 
	}
	
	printf ("\n\n\n\n\n\t__RESULTADO_DA_ITERAÇÃO__"); 
	fprintf (arq, "\n\n\n\n\n\t__RESULTADO_DA_ITERAÇÃO__"); 
	
	printf("\n\nBloco de texto selecionado: %d - ", indice);
	fprintf(arq, "\n\nBloco de texto selecionado: %d - ", indice);
	for (i = 0; i < 16; i++) {
		printf("%c",input_hex[i]); 
		fprintf(arq, "%c",input_hex[i]); 
	}


	//Converte o texto a forma Hexadecimal para uma visualização curta e mais fácil
	encryption = bin_to_hex (encry_permut); 


	printf ("\n\nTexto Hexadecimal Encriptado desta Iteração: \n"); 
	fprintf (arq, "\n\nTexto Hexadecimal Encriptado desta Iteração: \n"); 
	for (i = 0; i < 16; i++) {
		cryptoOut[indice][i] = * (encryption+i); 
		printf ("%c",cryptoOut[indice][i]);
		fprintf (arq, "%c", cryptoOut[indice][i]);
	}
		
	cryptoOut[indice][i] = '\0';
}





