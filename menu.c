#include "menu.h"
#include <osbind.h>
#include <stdio.h>
#include "main.h"
#include "types.h"
#include "events.h"
#include "fonts.h"
#include "render.h"
#include "input.h"


int menu_screen(UINT16 *base, UINT32 *base32)
{
	int loop = True;
	int key;
	int quit = False;
	UINT32 *temp32 = base32;
	UINT16 *temp = base;
	
	loadScreen(temp);
	
	write_tetris(base32, 216);
	
	start_button(temp, temp32);
	
	quit_button(temp, temp32);
	
	while(loop != False)
	{
		if(check_keys())
		{
			key = read_key();
					
				if(key == 'q')
				{
					quit = True;
					loop = False;
				}
				else if(key == 's')
				{
					loop = False;
				}
		}
		
	}
	
	return quit;
	
}


void start_button(UINT16 *bitmap, UINT32 *bitmap32)
{
	int StartButtonOffset = StartButton_X + (WORDS_PER_X_AXIS * StartButton_Y);
	UINT32 *temp32 = bitmap32 + (StartButton_X / 2 + (20 * StartButton_Y));
	UINT16 *temp = bitmap + StartButtonOffset;
	
	int i, j;
	
	for(j = 0; j < ButtonLength; j++)
	{
		for(i = 0; i < ButtonWidth; i++)
		{
			*(temp + i + (j * 40)) = 0;
			
		}
	}
	
	plot_font(temp32, 32, 0, getCharBitmap('S'), LONG);
	plot_font(temp32, 64, 0, getCharBitmap('T'), LONG);
	plot_font(temp32, 96, 0, getCharBitmap('A'), LONG);
	plot_font(temp32, 128, 0, getCharBitmap('R'), LONG);
	plot_font(temp32, 160, 0, getCharBitmap('T'), LONG);
	
	plot_font(temp32, 96, 64, getCharBitmap('S'), LONG);
	
	
}

void quit_button(UINT16 *bitmap, UINT32 *bitmap32)
{
	int QuitButtonOffset = QuitButton_X + (WORDS_PER_X_AXIS * QuitButton_Y);
	UINT32 *temp32 = bitmap32 + (QuitButton_X / 2 + (20 * QuitButton_Y));
	UINT16 *temp = bitmap + QuitButtonOffset;
	
	int i, j;
	
	for(j = 0; j < ButtonLength; j++)
	{
		for(i = 0; i < ButtonWidth; i++)
		{
			*(temp + i + (j * 40)) = 0;
			
		}
	}
	
	plot_font(temp32, 32, 0, getCharBitmap('Q'), LONG);
	plot_font(temp32, 64, 0, getCharBitmap('U'), LONG);
	plot_font(temp32, 96, 0, getCharBitmap('I'), LONG);
	plot_font(temp32, 128, 0, getCharBitmap('T'), LONG);
	plot_font(temp32, 160, 0, getCharBitmap(' '), LONG);
	
	plot_font(temp32, 96, 64, getCharBitmap('Q'), LONG);
	
}
