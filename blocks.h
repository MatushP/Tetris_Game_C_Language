/* BlOCKS.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*
*	Purpose -	Handles Tetris blocks and formation of Tetriminos
*	Details:
*		"blocks.c" consists of the block bitmap, which
*		contains a black block with a 2-pixel wide border around
*		the block. This file holds the default matrix for copying
*		tetramino shapes to be used, and ability to modify current
*		tetramino 4x4 matrix used for gameplay.
*		
*/

#ifndef BLOCKS_H
#define BLOCKS_H

#include "types.h"


/*	"write/clear_block(UINT16 *base)" Helper Functions
	
	Purpose -	Draws and removes 16-bit block graphic from screen
	Details:
		- write_block draws the block_bitmap to screen at given
		address in parameters (frame buffer)
		
		- clear_block zeros out the entire 16-bit section at given
		frame buffer location (clearing)
		
	Input *base - Address of location in Frame Buffer 
*/	
void write_block(UINT16 *base);
void clear_block(UINT16 *base);


/*	
	This function takes a char value and finds its appropriate UINT32 bitmap	
*/	
void get_tetra_bitmap(UINT16 tetra_bitmap[][4], int type);


/*	
	This function copies a four by four bitmap from the source to its destination
*/	
void copy_matrix(UINT16 src[][4], UINT16 dst[][4]);


	/*
		Clockwise:	https://hplusacademy.com/matrix-rotation-in-c/
		Purpose - Rotates a matrix to simulate rotating block
		
		When we rotate the original matrix by 90 degrees clockwise, then the
		first column of the original matrix becomes the first row of the output
		matrix and the last number of the first column of the original matrix 
		becomes the first number of the first row of the matrix and so on.
	*/
void rotate_matrix(UINT16 src[][4], UINT16 dst[][4]);


/*
		This function is the control function to rotate a tetramino bitmap
*/
void rotate(UINT16 *curr, UINT16 tetra_bitmap[][4], int x, int y, int PlacedBlocks[20][10]);


#endif
