main: main.o cube.o
	gcc -Wall -g main.o cube.o -o main

main.o: main.c cube.h
	gcc -Wall -g -c main.c

cube.o : cube.s
	gcc -Wall -g -c cube.s

run: main
	./main

clean:
	rm *.o main