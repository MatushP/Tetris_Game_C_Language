COMPILE = cc68x

DOTOS = main.o render.o blocks.o fonts.o input.o events.o menu.o buffer.o base.o isr.o vbl.o

game: $(DOTOS)
	$(COMPILE) -g $(DOTOS) -o game

events.o: events.c events.h types.h
	$(COMPILE) -g -c -v events.c

main.o: main.c render.h types.h
	$(COMPILE) -g -c -v main.c

input.o: input.c input.h
	$(COMPILE) -g -c -v input.c

blocks.o: blocks.c blocks.h
	$(COMPILE) -g -c -v blocks.c 

fonts.o: fonts.c fonts.h
	$(COMPILE) -g -c -v fonts.c

render.o: render.c render.h
	$(COMPILE) -g -c -v render.c
	
menu.o: menu.c menu.h
	$(COMPILE) -g -c -v menu.c
	
isr.o: isr.c isr.h
	$(COMPILE) -g -c -v isr.c
	
buffer.o: buffer.s buffer.h
	gen -D -L2 buffer.s

base.o:	base.s base.h 
	gen -D -L2 base.s
	
vbl.o: vbl.s vbl.h
	gen -D -L2 vbl.s

