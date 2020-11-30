main: main.o incsquare.o
	gcc -Wall -g main.o incsquare.o -o main

main.o: main.c incsquare.h
	gcc -Wall -g -c main.c

incsquare.o : incsquare.s
	gcc -Wall -g -c incsquare.s

run: main
	./main

clean:
	rm *.o main