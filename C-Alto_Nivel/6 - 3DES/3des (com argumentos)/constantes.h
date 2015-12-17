

#ifndef CONSTANTES_H
#define	CONSTANTES_H

#ifdef	__cplusplus
extern "C" {
#endif


char SB[32];

char *bin[] = {
	"0000",
	"0001",
	"0010",
	"0011",
	"0100",
	"0101",
	"0110",
	"0111",
	"1000",
	"1001",
	"1010",
	"1011",
	"1100",
	"1101",
	"1110",
	"1111"
}; 

char hex[16] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'}; 

int PC1[8][7] = {
	57,49,41,33,25,17,9,
	1,58,50,42,34,26,18,
	10,2,59,51,43,35,27,
	19,11,3,60,52,44,36,
	63,55,47,39,31,23,15,
	7,62,54,46,38,30,22,
	14,6,61,53,45,37,29,
	21,13,5,28,20,12,4
}; 

int PC2[8][6] = {
	14,17,11,24,1,5,
	3,28,15,6,21,10,
	23,19,12,4,26,8,
	16,7,27,20,13,2,
	41,52,31,37,47,55,
	30,40,51,45,33,48,
	44,49,39,56,34,53,
	46,42,50,36,29,32
}; 

int IP[8][8] = {
	58,50,42,34,26,18,10,2,
	60,52,44,36,28,20,12,4,
	62,54,46,38,30,22,14,6,
	64,56,48,40,32,24,16,8,
	57,49,41,33,25,17,9,1,
	59,51,43,35,27,19,11,3,
	61,53,45,37,29,21,13,5,
63,55,47,39,31,23,15,7}; 

int E_bit[8][6] = {
	32,1,2,3,4,5,
	4,5,6,7,8,9,
	8,9,10,11,12,13,
	12,13,14,15,16,17,
	16,17,18,19,20,21,
	20,21,22,23,24,25,
	24,25,26,27,28,29,
28,29,30,31,32,1}; 

char *look_up[] = {
	"00",
	"01",
	"10",
	"11"}; 

int pb_permutation[8][4] = {
	16,7,20,21,
	29,12,28,17,
	1,15,23,26,
	5,18,31,10,
	2,8,24,14,
	32,27,3,9,
	19,13,30,6,
22,11,4,25}; 

int s1[4][16] = {
		14,04,13,01,02,15,11,8,03,10,06,12,05,9,00,07,
        00,15,07,04,14,02,13,01,10,06,12,11,9,05,03,8,
        04,01,14,8,13,06,02,11,15,12,9,07,03,10,05,00,
        15,12,8,02,04,9,01,07,05,11,03,14,10,00,06,13}; 

int s2[4][16] = {
		15,01,8,14,06,11,03,04,9,07,02,13,12,00,05,10,
        03,13,04,07,15,02,8,14,12,00,01,10,06,9,11,05,
        00,14,07,11,10,04,13,01,05,8,12,06,9,03,02,15,
        13,8,10,01,03,15,04,02,11,06,07,12,00,05,14,9}; 
  

int s3[4][16] = {
		10,00,9,14,06,03,15,05,01,13,12,07,11,04,02,8,
        13,07,00,9,03,04,06,10,02,8,05,14,12,11,15,01,
        13,06,04,9,8,15,03,00,11,01,02,12,05,10,14,07,
        01,10,13,00,06,9,8,07,04,15,14,03,11,05,02,12}; 
  
int s4[4][16] = {
		07,13,14,03,00,06,9,10,01,02,8,05,11,12,04,15,
        13,8,11,05,06,15,00,03,04,07,02,12,01,10,14,9,
        10,06,9,00,12,11,07,13,15,01,03,14,05,02,8,04,
        03,15,00,06,10,01,13,8,9,04,05,11,12,07,02,14}; 
  
int s5[4][16] = {
		02,12,04,01,07,10,11,06,8,05,03,15,13,00,14,9,
        14,11,02,12,04,07,13,01,05,00,15,10,03,9,8,06,
        04,02,01,11,10,13,07,8,15,9,12,05,06,03,00,14,
        11,8,12,07,01,14,02,13,06,15,00,9,10,04,05,03}; 
  
int s6[4][16] = {
		12,01,10,15,9,02,06,8,00,13,03,04,14,07,05,11,
        10,15,04,02,07,12,9,05,06,01,13,14,00,11,03,8,
        9,14,15,05,02,8,12,03,07,00,04,10,01,13,11,06,
        04,03,02,12,9,05,15,10,11,14,01,07,06,00,8,13}; 
  
int s7[4][16] = {
		04,11,02,14,15,00,8,13,03,12,9,07,05,10,06,01,
        13,00,11,07,04,9,01,10,14,03,05,12,02,15,8,06,
        01,04,11,13,12,03,07,14,10,15,06,8,00,05,9,02,
        06,11,13,8,01,04,10,07,9,05,00,15,14,02,03,12}; 
  
int s8[4][16] = {
		13,02,8,04,06,15,11,01,10,9,03,14,05,00,12,07,
        01,15,13,8,10,03,07,04,12,05,06,11,00,14,9,02,
        07,11,04,01,9,12,14,02,00,06,10,13,15,03,05,8,
        02,01,14,07,04,10,8,13,15,12,9,00,03,05,06,11}; 

int ip_inverse[8][8] = {
	40,8,48,16,56,24,64,32,
	39,7,47,15,55,23,63,31,
	38,6,46,14,54,22,62,30,
	37,5,45,13,53,21,61,29,
	36,4,44,12,52,20,60,28,
	35,3,43,11,51,19,59,27,
	34,2,42,10,50,18,58,26,
	33,1,41,9,49,17,57,25
}; 


#ifdef	__cplusplus
}
#endif

#endif	/* CONSTANTES_H */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   constantes.h
 * Author: pripyat
 *
 * Created on 12 de Dezembro de 2015, 20:36
 */

#ifndef CONSTANTES_H
#define CONSTANTES_H

#ifdef __cplusplus
extern "C" {
#endif




#ifdef __cplusplus
}
#endif

#endif /* CONSTANTES_H */

