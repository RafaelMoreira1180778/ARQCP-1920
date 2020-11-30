main: main.o calculate.o
	gcc -m32 -Wall -g main.o calculate.o -o main

main.o: main.c calculate.h
	gcc -m32 -Wall -g -c main.c

calculate.o : calculate.s
	gcc -m32 -Wall -g -c calculate.s

run: main
	./main

clean:
	rm *.o main