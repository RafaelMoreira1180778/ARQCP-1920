main: main.o addone.o
	gcc -m32 -Wall -g main.o addone.o -o main

main.o: main.c addone.h
	gcc -m32 -Wall -g -c main.c

addone.o : addone.s
	gcc -m32 -Wall -g -c addone.s

run: main
	./main

clean:
	rm *.o main