/* BUFFER.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#ifndef BUFFER_H
#define BUFFER_H

#include "types.h"

/*
* 	Handles memory allocation and returns a 256-byte aligned buffer 
*	of 32000 bytes for double buffering.
*/
UINT16 *load_buffer();

#endif

