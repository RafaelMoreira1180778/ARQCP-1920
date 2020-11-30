main: main.o test.o
	gcc -m32 -Wall -g main.o test.o -o main

main.o: main.c test.h
	gcc -m32 -Wall -g -c main.c

test.o : test.s
	gcc -m32 -Wall -g -c test.s

run: main
	./main

clean:
	rm *.o main