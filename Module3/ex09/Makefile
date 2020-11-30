main: main.o vecsearch.o
	gcc -m32 -Wall -g main.o vecsearch.o -o main

main.o: main.c vecsearch.h
	gcc -m32 -Wall -g -c main.c

vecsearch.o : vecsearch.s
	gcc -m32 -Wall -g -c vecsearch.s

run: main
	./main

clean:
	rm *.o main