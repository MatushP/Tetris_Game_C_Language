/* EVENTS.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#ifndef EVENTS_H
#define EVENTS_H

#include "types.h"

/*
*		This function takes a four by four bitmap, and will return 1 if there is a block
* 		or the end of the playing field to the left of the current bitmap position;
*		meaning it is restricted to move_left. Otherwise 0 is returned 
*
*/
int check_left_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);


/*
*		This function takes a four by four bitmap, and will return 1 if there is a block
* 		or the end of the playing field to the right of the current bitmap position;
*		meaning it is restricted to move_right. Otherwise 0 is returned 
*
*/
int check_right_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);


/*
*		This function takes a four by four bitmap, and will return 1 if there is a block
* 		or the end of the playing field below the current bitmap position;
*		meaning it is restricted to move_down. Otherwise 0 is returned 
*
*/
int check_lower_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);


/*
*		An event that updates the 2D matrix PlacedBlocks to store the newly collided stable
*		tetramino
*/
void update_PlacedBlocks(int PlacedBlocks[20][10], int x, int y, UINT16 tetra_bitmap[][4]);


/*
*		This event will check if the field matrix (PlacedBlocks) has a completed row and
*		 will call update_rows to handle a row remove. Returns the number of completed rows
*/
int check_complete_rows(int PlacedBlocks[20][10], int y, UINT16 *playfield);




/*
*		This event will destroy the row given as a parameter and drop any blocks
*		above this row one block length down in the playing field matrix
*/
void update_rows(int PlacedBlocks[20][10], int row, UINT16 *playfield);


/*
*		This event takes a four by four bitmap and checks if there
*		is any overlap of blocks if the bitmap were to be rotated 90 degrees
*/
int check_rotate_bounds(UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);

/*
*
*		This event updates the score integer value fonts to match the newly updated score value
*
*/
void update_Score(int score, UINT32 *bitmap32);


/*
*
*		This event updates the level integer value fonts to match the newly updated level value
*
*/
void update_LVL(int lvlCounter, UINT32 *bitmap32);


/*
*
*		This event returns False if the quit key has been pressed
*		and True if not
*
*/
int handle_key_q(int key);



void initializePlayingField(int Blocks[20][10]);


/*
*
*		This event returns a random number which will be used to spawn a random tetramino
*
*/
int get_random_tetra();


/*
*
*		This event checks if the input keys that affects movement on the x axis have been pressed
*		and returns the position shift relative to a block size on the x axis 
*		(Can either return -1, 0, or 1)
*
*/
int handle_X_Keys(int key, UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);


/*
*
*		This event checks if the input key that affects movement on the y axis have been pressed
*		and returns the position shift relative to a block size on the y axis
*		(If pressed will return 16 since that is the block length; returns 0 otherwise)
*
*/
int handle_Y_Keys(int key, UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);

/*
*
*		This event checks if the input key that affects rotation has been pressed and will
*		alter the tetra_bitmap to be rotated 90 degrees clockwise
*
*/
void handle_Rotate_Key(int key, UINT16 *fieldStart, UINT16 *fieldStartBuffer, UINT16 tetra_copy[][4], 
UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10], int BufferBlocks[20][10]);


#endif