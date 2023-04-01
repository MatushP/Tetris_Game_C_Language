/* TYPES.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/


#ifndef TYPES_H
#define TYPES_H

#define NULL	0
#define BYTE	8
#define WORD	16
#define LONG	32

#define BLOCK_HEIGHT 		16
#define WORDS_PER_SCREEN 	16000
#define WORDS_PER_X_AXIS 	40
#define LONGS_PER_X_AXIS 	20
#define VERT_BLOCK_LENGTH 	640
#define ZEROBYTE			0x00


#define PlayFieldStart_X 2
#define	PlayFieldStart_Y 63
#define	PlayFieldEnd_X	24
#define PlayFieldEnd_Y 192

#define ButtonLength	100
#define	ButtonWidth	14
#define StartButton_X	12
#define StartButton_Y	100

#define QuitButton_Y	240
#define QuitButton_X	12

#define TETRA_DIMENSIONS 4 

#define StartingX 3
#define StartingY 0


#define False 0
#define True 1

#define PlayFieldHeight 20
#define PlayFieldWidth 	10

typedef unsigned char UINT8;
typedef unsigned int UINT16;
typedef unsigned long UINT32;

#endif