main: main.o functions.o
	gcc -m32 -Wall -g main.o functions.o -o main

main.o: main.c functions.h
	gcc -m32 -Wall -g -c main.c

functions.o : functions.s
	gcc -m32 -Wall -g -c functions.s

run: main
	./main

valgrind:
	valgrind ./main

clean:
	rm *.o main