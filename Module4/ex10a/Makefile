main: main.o count.o
	gcc -m32 -Wall -g main.o count.o -o main

main.o: main.c count.h
	gcc -m32 -Wall -g -c main.c

count.o : count.c
	gcc -m32 -Wall -g -c count.c

run: main
	./main

clean:
	rm *.o main