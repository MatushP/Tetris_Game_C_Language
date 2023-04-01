/*  ---------------------------------------
	Zachariah Ly	zly859@mtroyal.ca
	Matush 			mpola783@mtroyal.ca

	 Purpose -	Contains custom 32-bit font for Titles and Headers
	 Details: 
		Characters in fonts.c are organized into longword bitmaps, 
		only containing required characters to make up the the title 
		"TETRIS", and the words "SCORE", "LVL", "GAME OVER", "START",
		and "QUIT."
		
		Each character is made up of four pixels thick lines separated
		by two pixels thick blankspace, forming a "blocky" character.
		This file contains a helper function to output the address of
		the bitmap of selected characters.
	--------------------------------------- */

#ifndef FONTS_H
#define FONTS_H

#include "types.h"


/*	---------------------------------------
	 Purpose: Returns the memory address of a character bitmap
	 Details: 
		T. 
	 Input: Takes a 'char', and uses it to determine switch case
	 Output:
		In the switch, the case will assign bitmap address to 
		the pointer variable, then return the variable
	--------------------------------------- 
	*/
UINT32* getCharBitmap(char selection);


#endif
