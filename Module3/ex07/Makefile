main: main.o nsa.o
	gcc -m32 -Wall -g main.o nsa.o -o main

main.o: main.c nsa.h
	gcc -m32 -Wall -g -c main.c

nsa.o : nsa.s
	gcc -m32 -Wall -g -c nsa.s

run: main
	./main

clean:
	rm *.o main