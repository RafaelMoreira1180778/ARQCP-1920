main: main.o equal.o
	gcc -m32 -Wall -g main.o equal.o -o main

main.o: main.c equal.h
	gcc -m32 -Wall -g -c main.c

equal.o : equal.s
	gcc -m32 -Wall -g -c equal.s

run: main
	./main

clean:
	rm *.o main