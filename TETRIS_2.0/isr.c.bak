/* ISR.C
*		
*	Matush Polakovic	mpola783@mtroyal.ca
*	Zachariah Ly		zly859@mtroyal.ca
*	COMP2659
* 	Paul Pospisil
*		
*/

#include <osbind.h>
#include <stdio.h>

#include "isr.h"



Vector vbl_vector;


void vbl_req() 
{
 
}


void install_vectors() 
{
  vbl_vector = install_vector(VBL_ISR, vbl_isr);
  
}

Vector install_vector(int num, Vector vector) 
{
  Vector* vectp = (Vector *) ((long) num << 2);
  Vector orig;
  long old_ssp = Super(0);

  orig = *vectp;
  *vectp = vector;

  Super(old_ssp);
  return orig;
}


void remove_vectors() 
{
  install_vector(VBL_ISR, vbl_vector);
}