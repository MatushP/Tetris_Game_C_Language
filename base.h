/* BASE.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#ifndef BASE_H
#define BASE_H

#include "types.h"

/*
*
*		This function returns the 16 bit video base register that holds the start address of the frame buffer
*
*/
UINT16 *get_video_base();

/*
*
*		This function returns the 16 bit video base register that holds the start address of the frame buffer
*
*/
void *set_video_base(UINT16 *base);



#endif

