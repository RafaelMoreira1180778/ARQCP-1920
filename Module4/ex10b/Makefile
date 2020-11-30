main: main.o count.o
	gcc -m32 -Wall -g main.o count.o -o main

main.o: main.c count.h
	gcc -m32 -Wall -g -c main.c

count.o : count.s
	gcc -m32 -Wall -g -c count.s

run: main
	./main

clean:
	rm *.o main