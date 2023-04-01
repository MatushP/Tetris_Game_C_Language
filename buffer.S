;	BUFFER.S
;	Matush Polakovic	Zach Ly
;	mpola783@mtroyal.ca	zly859@mtroyal.ca
;
	
	
		xdef	_load_buffer
	
_load_buffer:	link a6,#0
				movem.l d2-4/a3,-(sp)
				
				lea	buffer,a3	
				move.l	a3,d0

				clr.l	d3		
				move.w	#256,d3		
				clr.l	d4		
				move.b	d0,d4		
				beq	done
				sub.w	d4,d3		
				add.l	d3,d0
					
done:			movem.l	(sp)+,d2-4/a3
				unlk	a6
				rts

		
buffer:		ds.b	32256