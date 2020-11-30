main: main.o asm.o
	gcc -m32 -Wall -g main.o asm.o -o main

main.o: main.c asm.h
	gcc -m32 -Wall -g -c main.c

asm.o : asm.s
	gcc -m32 -Wall -g -c asm.s

run: main
	./main

clean:
	rm *.o main