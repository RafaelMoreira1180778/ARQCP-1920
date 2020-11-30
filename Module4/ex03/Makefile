main: main.o greatest.o
	gcc -Wall -g main.o greatest.o -o main

main.o: main.c greatest.h
	gcc -Wall -g -c main.c

greatest.o : greatest.s
	gcc -Wall -g -c greatest.s

run: main
	./main

clean:
	rm *.o main