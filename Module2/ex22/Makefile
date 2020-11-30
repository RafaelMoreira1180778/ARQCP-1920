main: main.o functions.o
	gcc -m32 -Wall -g main.o functions.o -o main

main.o: main.c functions.h
	gcc -m32 -Wall -g -c main.c

concat.o : functions.s
	gcc -m32 -Wall -g -c functions.s

run: main
	./main

clean:
	rm *.o main