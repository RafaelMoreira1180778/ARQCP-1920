main: main.o frequencies.o
	gcc -Wall -g main.o frequencies.o -o main

main.o: main.c frequencies.h
	gcc -Wall -g -c main.c

frequencies.o : frequencies.s
	gcc -Wall -g -c frequencies.s

run: main
	./main

clean:
	rm *.o main