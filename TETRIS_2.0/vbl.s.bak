;	VBL.S
;	Matush Polakovic	Zach Ly
;	mpola783@mtroyal.ca	zly859@mtroyal.ca
		

		xdef	_vbl_isr
		xref	_vbl_req

_vbl_isr:	movem.l	d0/a0,-(sp)
			jsr	_vbl_req
			movem.l	(sp)+,d0/a0
			rte