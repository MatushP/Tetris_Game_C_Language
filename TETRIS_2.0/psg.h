/* DRAWS.H
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly	zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*	
*	Purpose- Music and sound control centre
*/

#ifndef PSG_H
#define PSG_H

#include "types.h"


void write_psg(int reg, UINT8 val);		 /*Writes the given byte value (0-255) to the given PSG register (0-15).*/
void set_tone(int channel, int tuning);  /*Loads the tone registers (coarse and fine) for the given channel (0=A, 1=B, 2=C) with the given 12-bit tuning.*/
void set_volume(int channel, int volume); /*Loads the volume register for the given channel*/
void enable_channel(int channel, int tone_on, int noise_on); /*Turns the given channel’s tone/noise signals on/off (0=off, 1=on).*/
void stop_sound();											/*Silences all PSG sound production.*/
void start_music(); 						/*Begins the playing of the song by loading the data for the first note into the PSG.*/
void update_music(UINT32 time_elapsed); 	/*Advances to the next note of the song if necessary,*/
UINT8 validIntToUINT8 (int num);



/*
	R0-1:	Channel 'A' Freq. Fine/Rough Tone Adj.
	R2-3:	Channel 'B' "		"	"		" "
	R4-5:	Channel 'C' "		"	"		" "
	R6	:	Frequency of Noise
	R7	:	I/O Port and Mixer Setting
	R8-A:	Level of Channels 'A'-'C'
	RB-C:	Frequency of Envelope (Fine/Rough)
	RD	:	Shape of Envelope
	RE-F:	Data of I/O Port 'A' & 'B'
*/

#endif