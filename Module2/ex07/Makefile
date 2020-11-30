main: main.o cross.o
	gcc -m32 -Wall -g main.o cross.o -o main

main.o: main.c cross.h
	gcc -m32 -Wall -g -c main.c

concat.o : cross.s
	gcc -m32 -Wall -g -c cross.s

run: main
	./main

clean:
	rm *.o main