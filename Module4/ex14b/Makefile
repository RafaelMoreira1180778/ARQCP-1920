main: main.o join.o
	gcc -m32 -Wall -g main.o join.o -o main

main.o: main.c join.h
	gcc -m32 -Wall -g -c main.c

join.o : join.s
	gcc -m32 -Wall -g -c join.s

run: main
	./main

clean:
	rm *.o main