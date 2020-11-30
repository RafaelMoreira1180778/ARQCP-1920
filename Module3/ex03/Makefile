main: main.o strcopy.o
	gcc -m32 -Wall -g main.o strcopy.o -o main

main.o: main.c strcopy.h
	gcc -m32 -Wall -g -c main.c

strcopy.o : strcopy.s
	gcc -m32 -Wall -g -c strcopy.s

run: main
	./main

clean:
	rm *.o main