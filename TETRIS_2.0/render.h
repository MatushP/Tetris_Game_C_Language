/* RENDER.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly	zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#ifndef RENDER_H
#define RENDER_H

#include "types.h"


/*
*	 
*		This function sets the screen completly black
*/
void loadScreen(UINT16 *base);

/*
*	 
*		This function sets the playing field dimensions of the screen completly white
*/
void loadPlayField(UINT16 *base);

/*
*	 
*		This function writes the placed blocks onto the playing field
*/
void write_FieldBlocks(int Block[20][10], UINT16 *playfield);


/*
*	 
*		This function writes the tetramino bitmap onto the playing field
*/
void write_tetramino(UINT16 *base, UINT16 tetra_bitmap[][4]);


/*
*	 
*		This function writes a 32 bit length/height font onto the screen
*/
void plot_font(UINT32 *base, int x, int y, UINT32 *bitmap, int height);

/*
*	 
*		This function writes the letters "LVL" onto the screen using appropriate fonts
*/
void write_level(UINT32 *base32);


/*
*	 
*		This function writes the letters "TETRIS" onto the screen using appropriate fonts
*/
void write_tetris(UINT32 *base32, int x);

/*
*	 
*		This function writes the letters "SCORE" onto the screen using appropriate fonts
*/
void writeScore(UINT32 *base32);


/*
*	 
*		This function writes eleven integer value '0's onto the screen setting the initial score
*/
void writeZeros(UINT32 *base32);


/*
*	 
*		This function writes the level number integer value onto the screen
*/
void writeLvlNum(UINT32 *base32);




#endif