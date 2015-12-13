

#ifndef FUNCOES_H
#define	FUNCOES_H


#ifdef	__cplusplus
extern "C" {
#endif


    
#include <stdio.h>
#include <string.h>
#include <malloc/malloc.h>
#include <stdlib.h>
#include <math.h>


static char key_hex[3][16];

void printCDK(char CD[56], char K[48], char indice, FILE * );
void printCD(char C[28], char D[28], char indice, FILE * );
void printLiRi(char L[32], char R[32], char indice, FILE * );

void upper_char(char * input);
void hex_to_bin(char * , char * );
char * bin_to_hex(char * );
void permutation(char * , char * );
void make_half(char * , char * , char * );
void single_shift(char * , char * );
void double_shift(char * , char * );
void make_key(char * , char * , char * );
void permutation_32(char * , char * );
void permutation_48(char * , char * );
void permutation_64(char * , char * , char * );

void des_round(FILE * arquivo, char * L1, char * R1, char * L0, char * R0, char * ER0, char * K1, char * F1, char indice);
void des_round_decry(FILE * arquivo, char * Ri, char * Li, char * Ri1, char * Li1, char * ERi1, char * K1, char * F1, char indice);
void copy(char * , char * );
void permut_48(char * , char * );
void xor(char * , char * , char * );
void xor_32(char * , char * , char * );
void common_permutation(char * , char * );
void hex_to_plain(unsigned char in[][16] , unsigned char * out, int t);
int switch_case(char);
void copyResultado(int linhas, unsigned char in[linhas][16], unsigned char * out);
void arquivoResposta (unsigned char * , char * , FILE * );

#ifdef	__cplusplus
}
#endif

#endif	/* FUNCOES_H */

