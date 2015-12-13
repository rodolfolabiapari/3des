#include "funcoes.h"
#include "constantes.h"

//Função que torna todos os caracteres em caixa alta
void upper_char(char * input) {
	int length, i;

	//Verifica tamanho da String
	length = strlen(input);

	//Para cada caractere
	for (i = 0; i < length; i++) {
		//printf("%d -> ", input[i]);
		//Verifica se está no intervalo de caracteres com caixa baixa.
		//Se sim, ele o subtrai 32 unidades no qual consiste em o número em caixa alta.
		if (input[i] > 96 && input[i] < 123) 
			input[i] -= 32;
		//printf("%d\n", input[i]);
	}
}




void printCDK(char CD[56], char K[48], char indice, FILE * arquivo) {
	int i;
	//imprimindo na tela
	printf("\n\nCD.%c: ", indice);
	fprintf(arquivo, "\n\nCD.%c: ", indice);

	for (i = 0; i < 56; i++) {
		printf("%c", CD[i]);
		fprintf(arquivo, "%c", CD[i]);

		if ((i + 1) % 7 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}

		if ((i + 1) % 28 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	printf("\nK.%c : ", indice);
	fprintf(arquivo, "\nK.%c : ", indice);

	for (i = 0; i < 48; i++) {
		printf("%c", K[i]);
		fprintf(arquivo, "%c", K[i]);

		if ((i + 1) % 6 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

		fflush(stdout);
}

void printCD(char C[28], char D[28], char indice, FILE * arquivo) {
	int i;

	//imprimindo na tela
	printf("\n\nC.%c: ", indice);
	fprintf(arquivo, "\n\nC.%c: ", indice);

	for (i = 0; i < 28; i++) {
		printf("%c", C[i]);
		fprintf(arquivo, "%c", C[i]);
		if ((i + 1) % 7 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	printf("\t\tD.%c: ", indice);
	fprintf(arquivo, "\t\tD.%c: ", indice);

	for (i = 0; i < 28; i++) {
		printf("%c", D[i]);
		fprintf(arquivo, "%c", D[i]);
		if ((i + 1) % 7 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	fflush(stdout);

	//printf("\n\n");
	//fprintf(arquivo, "\n\n");
}

void printLiRi(char L[32], char R[32], char indice, FILE * arquivo) {
	int i;

	//imprimindo na tela
	printf("\n\nL.%c                        : ", indice);
	fprintf(arquivo, "\n\nL.%c                        : ", indice);

	for (i = 0; i < 32; i++) {
		printf("%c", L[i]);
		fprintf(arquivo, "%c", L[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	printf("\n");
	
	printf("R.%c                        : ", indice);
	fprintf(arquivo, "\nR.%c                        : ", indice);

	for (i = 0; i < 32; i++) {
		printf("%c", R[i]);
		fprintf(arquivo, "%c", R[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	fflush(stdout);
}

//Função que Transforma uma sequência Hexadecimal em binária
void hex_to_bin(char * input, char * in ) {

	short i, j, k, lim = 0;

	//Para todos os 16 caracteres da String
	for (i = 0; i < 16; i++) {
		//Percorre todas as 16 opções diferentes de números hexadecimais.
		for (j = 0; j < 16; j++) {
			//Verifica se o determinado caractere na posição I, é igual a algum número Hexadecimal
			if ( * (input + i) == hex[j]) {
				//Copia as sequências dos bits que representam o número binário.
				for (k = 0; k < 4; k++) {
					//A Variável lim cria a sequência de caracteres sem que, ao comparar outro caractere, ele volte a zero.
					//Como é contínuo, o final será uma sequência dos mesmos caracteres mas em formato binário.
					* ( in +lim) = bin[j][k];
					lim++;
				}
			}
		}
	}
}


//Função que transforma uma sequência binária em Hexadecimal
char * bin_to_hex(char * bit) {
	char tmp[5], * out;
	short lim = 0, i, j;

	//Será pego a frase com os 64 números (de quatro em quatro) em números Hexadecimais.
	out = (char * ) malloc(16 * sizeof(char));

	for (i = 0; i < 64; i = i + 4) {
		//concatena os números formando o número binário.
		tmp[0] = bit[i];
		tmp[1] = bit[i + 1];
		tmp[2] = bit[i + 2];
		tmp[3] = bit[i + 3];
		tmp[4] = '\0';

		//Verifica qual a qual número binário o número Hexadecimal representa
		for (j = 0; j < 16; j++) {

			if ((strcmp(tmp, bin[j])) == 0) {
				out[lim++] = hex[j];
				break;
			}
		}
	}

	//Adiciona o terminador
	out[lim] = '\0';
	return out;
}


//Procedimento que transforma um texto Hexadecimal em um texto legível ao usuário
void hex_to_plain(unsigned char in[][16] , unsigned char * out, int t) {

	int i, j = 0, k, z, sum;
	char temp[3];

	for (k = 0; k < t; k++) {

		//Cada caractere é descrito com dois dígitos em Hexadecimais
		for (i = 0; i < 16; i = i + 2) {

			sum = 0;
			//Verifica o dígito da dezena
			temp[0] = in [k][i];
			//Verifi se é alguma letra e retorna seu número em decimal
			if (temp[0] >= 65 && temp[0] <= 71) 
				z = switch_case(temp[0]);

			// Caso contrário o valor encontrado já representa um número em decimal
			else

				//O número 0 (zero) da tabela ASCII representa o valor 48 em decimal
				//Então, para 'normalizar' os números, é subtraido o valor de 48 para que os números decimais representem eles mesmos
				z = temp[0] - 48;


			//Como estamos trabalhando na casa da Dezena, o número é multiplicado por 16 (representando o valor antigo em Hexadecimal na casa da dezena).
			sum = sum + z * 16;

			//
			temp[1] = in [k][i + 1];
			//Verifi se é alguma letra e retorna seu número em decimal
			if (temp[1] >= 65 && temp[1] <= 71) 
				z = switch_case(temp[1]);
			else 
				z = temp[1] - 48;

			sum = sum + z * 1;
			temp[2] = '\0';

			* (out + j) = sum;
			j++;
		} 
	}
	
	* (out + t * 16) = '\0';
}


//Copia frases de 32 caracteres de R para L.
void copyResultado(int linhas, unsigned char in[linhas][16], unsigned char * out) {

	int i, j;
	
	for (i = 0; i < linhas; i++) 
		for (j = 0; j < 16; j++)
			* (out + (i * 16) + j) = in[i][j];

}


//Função que retorna o valor correspondente em decimal às letras hexadecimais.
int switch_case(char a) {

	switch (a) {
		case 'A':
			return (10);
			break;

		case 'B':
			return (11);
			break;

		case 'C':
			return (12);
			break;

		case 'D':
			return (13);
			break;

		case 'E':
			return (14);
			break;

		case 'F':
			return (15);
			break;
	}

	return 0;
}

//Procedimento que realiza a primeira Permutação da chave
void permutation(char * key_bin, char * key_PC1) {

	short i, j, k = 0, temp;

	//A matriz na qual o DES se baseia é fixa. Ela possui as dimensões 8x7
	for (i = 0; i < 8; i++) {
		for (j = 0; j < 7; j++) {
			//O número da chave será condederá ao índice da tabela. Esse número da tabela será utilizado ao decorrer.
			//Será decrementado um por causa da indexação em 0 (zero) na compilação
			temp = PC1[i][j] - 1;

			//Será feita uma sequência com esses números encontrados na tabela.
			//Devemos ter em mente que cada número adicionado nesses parênteses, equivale a 'Posição' e não o valor em si (ponteiros).
			//Ou seja, quando pegamos o 'key_bin + temp' estamos pegando a posição de inicial key_bin (no qual terá o primeiro valor da sequência) somada com um intervalo definido por um número na tabela de permutação.
			//O intervalo representará o índice. Ou seja, se tem for 32, o valor da 32 posição será permutado para a posição K da nova sequência.
			* (key_PC1 + k) = * (key_bin + temp);
			k++;
		}
	}
}



//Procedimento que quebra uma chave permutada em duas chaves.
void make_half(char * key_PC1, char * a, char * b) {

	int i, j = 0;
	//Procedimento que divide uma chave de 56 em duas de tamanhos iguais.
	
	for (i = 0; i < 56; i++) {
		//Primeira metade fica na Variável a
		if (i < 28) 
			* (a + i) = * (key_PC1 + i);

		//A segunda metade fica na Variável b no qual utiliza o J pra indicar a indexação.
		else { 
			* (b + j) = * (key_PC1 + i);
			j++;
		}
	}
}

//Procedimento que Desloca um int da Direita para a Esquerda de forma circular/rotacional
void single_shift(char * p, char * q) {
	int i;

	//Recebe o int LSB
	* (q + 27) = * (p + 0);

	//Desloca cada int restante
	for (i = 0; i < 27; i++) 
		* (q + i) = * (p + (i + 1));
}


//Procedimento que desloca dois int's da Direita para a Esquerda de forma circular/rotacional
void double_shift(char * p, char * q) {
	int i;

	//Recebe os dois ints LSB
	* (q + 26) = * (p + 0); * (q + 27) = * (p + 1);

	//Desloca cada int restante
	for (i = 0; i < 26; i++) 
		* (q + i) = * (p + (i + 2));
}


//Concatena Duas metades de chaves em uma única
void make_key(char * a, char * b, char * c) {
	int i;

	//Copia a primeira sequência de caracteres
	for (i = 0; i < 28; i++) 
		* (c + i) = * (a + i);

	//Continua com a segunda sequência de caracteres
	for (i = 28; i < 56; i++) 
		* (c + i) = * (b + (i - 28));
}

//Realiza a permutação 48 das chaves
void permutation_48(char * CD, char * K) {
	short i, j, m = 0, temp;

	//Percorre toda a matriz de permutaçõa
	for (i = 0; i < 8; i++) {

		for (j = 0; j < 6; j++) {
			//Pega a posição de cada elemento da matriz
			temp = PC2[i][j] - 1;

			//Coloca o valor da chave na determinada posico dita pela matriz
			* (K + m) = * (CD + temp);
			m++;
		}
	}
}

void arquivoResposta (unsigned char * r, char * nomeSaida, FILE * orienta) {
	FILE * saida;
	
	if ((saida = fopen (nomeSaida, "w")) == NULL) {
		printf("Não foi possível criar o arquivo de saida\n");
		printf(orienta, "Não foi possível criar o arquivo de saida\n");
		exit(1);
	}
	
	fprintf(saida, "%s", r);

	fflush(stdout);
	
	fclose(saida);
}

//Permutação inicial (IP) do texto puro.
//Além da permutação o texto será dividido em em duas partes
void permutation_64(char * in , char * L, char * R) {
	int i, j, m = 0, temp;

	//Realiza a permutação da primeira parte
	for (i = 0; i < 4; i++) {
		for (j = 0; j < 8; j++) {
			temp = IP[i][j] - 1; * (L + m) = * ( in +temp);
			m++;
		}
	}

	m = 0;

	//Logo em seguida já realiza a permutação separando a segunda parte.
	for (i = 4; i < 8; i++) {
		for (j = 0; j < 8; j++) {
			temp = IP[i][j] - 1; 
			* (R + m) = * ( in +temp);
			m++;
		}
	}
}


//Procedimento que realiza uma iteração
void des_round(FILE * arquivo, char * L1, char * R1, char * L0, char * R0, char * ER0, char * K1, char * F1, char indice) {
	char t[3], tp[5], f[33];
	int temp, i, row, column, j, limit = 0;


	//Copia o resultado da divisão passada. Li recebe R(i-1)
	//O tamanho deste pedaço de chave é 32
	copy(L1, R0);


	//Logo depois da cópia, é feita a expansão da Ri de 32 para a sequência de texto puro com tamanho 48.
	permut_48(R0, ER0);

	//imprime na tela
	printf("\n\tPermutação E(48) de R%c : ", indice);
	fprintf(arquivo, "\n\tPermutação E(48) de Ri : ");

	for (i = 0; i < 48; i++) {
		printf("%c", ER0[i]);
		fprintf(arquivo, "%c", ER0[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	fflush(stdout);

	//Com o texto puro de tamanho 48, é feito a operação Xor com a chave da Iésima iteração da permutação das chaves.
	//Cada iteração fará a operação Xor com chaves de valores diferenes
	xor(K1, ER0, F1);

	//imprime na tela
	printf("\n\tK%c xor ER%c = F%c        : ", indice, indice, indice);
	fprintf(arquivo, "\n\tK%c xor ER%c = F%c        : ", indice, indice, indice);

	for (i = 0; i < 48; i++) {
		printf("%c", F1[i]);
		fprintf(arquivo, "%c", F1[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	fflush(stdout);


	//ATENÇÃO: É IMPORTANTE LEMBRAR QUE O I É INCREMENTADO EM 6 (SEIS) UNIDADES. CADA SEQUÊNCIA QUE ENTRARÁ NAS S-BOX TERÃO SOMENTE 6 BITS.
	for (i = 0; i < 48; i = i + 6) {
		//Por exemplo: Se entrasse a sequência de bits 011001, a S-Box selecionaria  os dois extremos (i) e (i+5) concatenando-os. O resultado determina a linha da tabela (ROW).
		t[0] = F1[i];
		t[1] = F1[i + 5];
		t[2] = '\0';

		for (j = 0; j < 4; j++) {
			//Compara todas as 4 opçoes. e Encontra a linha 00, 01, 10, 11.
			if (strcmp(t, look_up[j]) == 0) {
				row = j;
				//printf ("%d",row); 
				break;
			}
		}


		//Os bits intermediários determinarão a coluna a ser escolhida.
		tp[0] = F1[i + 1];
		tp[1] = F1[i + 2];
		tp[2] = F1[i + 3];
		tp[3] = F1[i + 4];
		tp[4] = '\0';

		for (j = 0; j < 16; j++) {
			if (strcmp(tp, bin[j]) == 0) {
				//Seleciona a coluna.
				column = j;
				break;
			}
		}

		//Seleciona o resultado de acordo com a iteração do I dita pela estrutura de repetição.
		switch (i) {
			case 0:
				temp = s1[row][column];
				break;
			case 6:
				temp = s2[row][column];
				break;
			case 12:
				temp = s3[row][column];
				break;
			case 18:
				temp = s4[row][column];
				break;
			case 24:
				temp = s5[row][column];
				break;
			case 30:
				temp = s6[row][column];
				break;
			case 36:
				temp = s7[row][column];
				break;
			case 42:
				temp = s8[row][column];
				break;
		}

		//Monta a saida das Si
		for (j = 0; j < 4; j++) {
			SB[limit] = bin[temp][j];
			limit++;
		}
	}



	//Adiciona o terminador de frase
	SB[limit] = '\0';

	printf("\n\tSB                     : %s", SB);
	fprintf(arquivo, "\n\tSB			           : %s", SB);


	//Realiza a permutação final. A P-box.
	permutation_32(SB, f);

	f[32] = '\0';

	printf("\n\tPB                     : %s", f);
	fprintf(arquivo, "\n\tPB                     : %s", f);
	
	//A sequência utilizada é dita como nula para evitar lixos de memória 
	SB[0] = '\0';

	//Realiza-se uma operação XOR com o resultado da permutação com o Li do início.
	xor_32(L0, f, R1);

	printf("\n\tL%c xor PB = R(%c + 1)   :%c", indice, indice, ' ');
	fprintf(arquivo, "\n\tL%c xor PB = R(%c + 1)   :%c", indice, indice, ' ');
	
	for (i = 0; i < 32; i++) {
		
		printf("%c", R1[i]);
		fprintf(arquivo,"%c",  R1[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}

	fflush(stdout);
	}

}

void des_round_decry(FILE * arquivo, char * Ri, char * Li, char * Ri1, char * Li1, char * ERi1, char * K1, char * F1, char indice) {
	char tp[5], f[33];
	int temp, i, row, column, j, limit = 0;

	copy(Ri1, Li);

	permut_48(Ri1, ERi1);

	printf("\n\tPermutação E(48) de R%c : ", indice);
	fprintf(arquivo, "\n\tPermutação E(48) de Ri : ");

	for (i = 0; i < 48; i++) {
		printf("%c", ERi1[i]);
		fprintf(arquivo, "%c", ERi1[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	for (int i = 0; i < 3; i++) {
		key_hex[i][0];
	}


	xor(K1, ERi1, F1);

	printf("\n\tK%c xor ER%c = F%c        : ", indice, indice, indice);
	fprintf(arquivo, "\n\tK%c xor ER%c = F%c        : ", indice, indice, indice);

	for (i = 0; i < 48; i++) {
		printf("%c", F1[i]);
		fprintf(arquivo, "%c", F1[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}

	for (i = 0; i < 48; i = i + 6) {

		tp[0] = F1[i];
		tp[1] = F1[i + 5];
		tp[2] = '\0';

		for (j = 0; j < 4; j++) { if (strcmp(tp, look_up[j]) == 0) {
				row = j;
				//printf ("%d",row); 
				break;
			}
		}

		tp[0] = F1[i + 1];
		tp[1] = F1[i + 2];
		tp[2] = F1[i + 3];
		tp[3] = F1[i + 4];
		tp[4] = '\0';

		for (j = 0; j < 16; j++) { if (strcmp(tp, bin[j]) == 0) {
				column = j;
				break;
			}
		}

		switch (i) {
			case 0:
				temp = s1[row][column];
				break;
			case 6:
				temp = s2[row][column];
				break;
			case 12:
				temp = s3[row][column];
				break;
			case 18:
				temp = s4[row][column];
				break;
			case 24:
				temp = s5[row][column];
				break;
			case 30:
				temp = s6[row][column];
				break;
			case 36:
				temp = s7[row][column];
				break;
			case 42:
				temp = s8[row][column];
				break;
		}

		for (j = 0; j < 4; j++) { SB[limit] = bin[temp][j];
			limit++;
		}
	}

	SB[limit] = '\0';

	printf("\n\tSB                     : %s", SB);
	fprintf(arquivo, "\n\tSB			           : %s", SB);

	permutation_32(SB, f);
	
	f[32] = '\0';

	printf("\n\tPB                     : %s", f);
	fprintf(arquivo, "\n\tPB                     : %s", f);
	
	SB[0] = '\0';

	xor_32(Ri, f, Li1);

	printf("\n\tL%c xor PB = R(%c + 1)   : ", indice, indice);
	fprintf(arquivo, "\n\tL%c xor PB = R(%c + 1)   : ", indice, indice);
	
	for (i = 0; i < 32; i++) {
		printf("%c", Ri[i]);
		fprintf(arquivo,"%c",  Ri[i]);

		if ((i + 1) % 8 == 0) {
			printf(" ");
			fprintf(arquivo, " ");
		}
	}
	
}
//Copia frases de 32 caracteres de R para L.
void copy(char * L, char * R) {
	int i;

	for (i = 0; i < 32; i++) 
		//printf("%c\n", (L + i));
		* (L + i) = * (R + i);
}



//Tabela de expansão
void permut_48(char * R, char * ER) {
	short i, j, m = 0, temp;

	for (i = 0; i < 8; i++) {
		for (j = 0; j < 6; j++) {
			temp = E_bit[i][j] - 1; * (ER + m) = * (R + temp);
			m++;
		}
	}
}

//Faz a operação XOR byte a byte dos números passados.
void xor(char * K, char * ER, char * F) {
	int i, m = 0;

	for (i = 0; i < 48; i++) {

		if (( * (K + i) == '1' && * (ER + i) == '1') || 
			( * (K + i) == '0' && * (ER + i) == '0')) { 

			* (F + m) = '0';
			m++;

		} else {
			* (F + m) = '1';
			m++;
		}
	}
}


//Faz a operação XOR byte a byte dos números passados.
void xor_32(char * L0, char * f, char * R1) {
	short i, m = 0;

	for (i = 0; i < 32; i++) {

		if (( * (L0 + i) == '1' && * (f + i) == '1') ||
			( * (L0 + i) == '0' && * (f + i) == '0')) { 

			* (R1 + m) = '0';
			m++;

		} else { 
			* (R1 + m) = '1';
			m++;
		}
	}
}


//Realiza a permutação da P-Box
void permutation_32(char * SB1, char * f) {
	short i, j, m = 0, temp;

	//Percorre toda a matriz de permutação
	for (i = 0; i < 8; i++) {
		for (j = 0; j < 4; j++) {
			//Seleciona os valores da permutação da P-Box
			temp = pb_permutation[i][j] - 1; * (f + m) = * (SB1 + temp);
			m++;
		}
	}
}


//Permutação Final (IP Inversa)
void common_permutation(char * in , char * out) {
	short i, j, temp, m = 0;
	for (i = 0; i < 8; i++) {
		for (j = 0; j < 8; j++) {
			temp = ip_inverse[i][j] - 1;
			out[m] = in [temp];
			m++;
		}
	}
}

