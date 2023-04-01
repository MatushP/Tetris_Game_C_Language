/* RENDER.C
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/


#include <osbind.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include "render.h"
#include "main.h"
#include "types.h"
#include "blocks.h"
#include "fonts.h"


void loadScreen(UINT16 *base)
{
	int i = 0;
	UINT16 *temp = base;

	while(i++ < WORDS_PER_SCREEN)
	{
		*(temp++) = -1;
	}
} 

void loadPlayField(UINT16 *base)
{
	UINT16 *temp = base;
	
	int i = 0;
	int j = 0;
	
	while(i < (WORD * PlayFieldHeight))
	{
		while(j < PlayFieldWidth)
		{
			*(temp++ + (30 * i)) = 0;
			j++;
		}	
	i++;
	j = 0;
	}
}	

void write_FieldBlocks(int Block[20][10], UINT16 *playfield)
	{
		int i, j;
		
		for(j = 0; j < 20; j++)
		{
			for(i = 0; i < 10; i++)
			{
				if(Block[j][i] == 1)
				{
					write_block(playfield + i + (j * 16 * 40));
				}				
			}
		}
	}
	
	/*	Purpose - Draws a tetramino piece to screen graphics
	Details: 
		This functions takes 

*/	
	
void write_tetramino(UINT16 *base, UINT16 tetra_bitmap[][4]) {
		int i;
		int j;
		int count;
		int offset;
		UINT16 *temp = base;
		UINT16 rotated_bitmap[4][4];
		
		copy_matrix(tetra_bitmap, rotated_bitmap);
		
		/*for(count = 0; count < orientation; count++){
			rotate_matrix(tetra_bitmap, rotated_bitmap);
		}*/
		
		for(j = 0; j < 4; j++)
			for(i = 0; i < 4; i++) {
				offset = ((WORDS_PER_X_AXIS * WORD) * j) + i;
				
				if(rotated_bitmap[j][i] == 1)
					write_block(temp + offset);
			}
	}


void write_level(UINT32 *base32) {
		plot_font(base32, 32, 8, getCharBitmap('L'), LONG);
		plot_font(base32, 64, 8, getCharBitmap('V'), LONG);	
		plot_font(base32, 96, 8, getCharBitmap('L'), LONG);
	}
	
	
void write_tetris(UINT32 *base32, int x) {
		plot_font(base32, x, 32, getCharBitmap('T'), LONG);
		plot_font(base32, x + 32, 32, getCharBitmap('E'), LONG);
		plot_font(base32, x + 64, 32, getCharBitmap('T'), LONG);
		plot_font(base32, x + 96, 32, getCharBitmap('R'), LONG);
		plot_font(base32, x + 128, 32, getCharBitmap('I'), LONG);
		plot_font(base32, x + 160, 32, getCharBitmap('S'), LONG);		
	}

void writeScore(UINT32 *base32) {
		plot_font(base32, 288, 96, getCharBitmap('S'), LONG);
		plot_font(base32, 320, 96, getCharBitmap('C'), LONG);
		plot_font(base32, 352, 96, getCharBitmap('O'), LONG);
		plot_font(base32, 384, 96, getCharBitmap('R'), LONG);
		plot_font(base32, 416, 96, getCharBitmap('E'), LONG);
	}

void writeZeros(UINT32 *base32) {
		plot_font(base32, 224, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 256, 136, getCharBitmap('0'), LONG);	
		plot_font(base32, 288, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 320, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 352, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 384, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 416, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 448, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 480, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 512, 136, getCharBitmap('0'), LONG);
		plot_font(base32, 544, 136, getCharBitmap('0'), LONG);	
	}
	
void writeLvlNum(UINT32 *base32) {
		plot_font(base32, 128, 8, getCharBitmap('0'), LONG);
		plot_font(base32, 160, 8, getCharBitmap('1'), LONG);
}
	
	
void plot_font(UINT32 *base, int x, int y, 
	const UINT32 *bitmap, int height) {	
		int i;
		int offset = (20 * y) + (x >> 5);

		for (i = 0; i < height; i++){
		if (x >= 0 && x < 640 && y >= 0 && y <400)
			*(base + offset + 20 * i) = bitmap [i];
		}
	}

