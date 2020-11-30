main: main.o swap.o
	gcc -m32 -Wall -g main.o swap.o -o main

main.o: main.c swap.h
	gcc -m32 -Wall -g -c main.c

swap.o : swap.s
	gcc -m32 -Wall -g -c swap.s

run: main
	./main

clean:
	rm *.o main