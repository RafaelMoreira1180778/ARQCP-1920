main: main.o counteven.o
	gcc -m32 -Wall -g main.o counteven.o -o main

main.o: main.c counteven.h
	gcc -m32 -Wall -g -c main.c

counteven.o : counteven.s
	gcc -m32 -Wall -g -c counteven.s

run: main
	./main

clean:
	rm *.o main