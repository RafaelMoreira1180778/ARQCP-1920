main: main.o changes.o
	gcc -m32 -Wall -g main.o changes.o -o main

main.o: main.c changes.h
	gcc -m32 -Wall -g -c main.c

changes.o: changes.c
	gcc -m32 -Wall -g -c changes.c

run: main
	./main

clean:
	rm *.o main