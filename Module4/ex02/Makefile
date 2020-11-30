main: main.o soma.o
	gcc -m32 -Wall -g main.o soma.o -o main

main.o: main.c soma.h
	gcc -m32 -Wall -g -c main.c

soma.o : soma.s
	gcc -m32 -Wall -g -c soma.s

run: main
	./main

clean:
	rm *.o main