main: main.o ifcycle.o
	gcc -m32 -Wall -g main.o ifcycle.o -o main

main.o: main.c ifcycle.h
	gcc -m32 -Wall -g -c main.c

ifcycle.o : ifcycle.s
	gcc -m32 -Wall -g -c ifcycle.s

run: main
	./main

clean:
	rm *.o main

