/* MENU.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#ifndef MENU_H
#define MENU_H

#include "types.h"

/*
*		This function is the menu control centre and will write all the objects for the
*		menu to the screen including the start button, quit button, and "tetris" fonts
*
*/
int menu_screen(UINT16 *base, UINT32 *base32);

/*
*		This function writes a white rectangle and the "Start" fonts to
*		display a start button to the screen
*
*/
void start_button(UINT16 *bitmap, UINT32 *bitmap32);

/*
*		This function writes a white rectangle and the "Quit" fonts to
*		display a quit button to the screen
*
*/
void quit_button(UINT16 *bitmap, UINT32 *bitmap32);


#endif