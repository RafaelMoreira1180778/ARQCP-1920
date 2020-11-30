main: main.o calc.o
	gcc -m32 -Wall -g main.o calc.o -o main

main.o: main.c calc.h
	gcc -m32 -Wall -g -c main.c

calc.o : calc.s
	gcc -m32 -Wall -g -c calc.s

run: main
	./main

clean:
	rm *.o main