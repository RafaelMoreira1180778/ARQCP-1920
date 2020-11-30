main: main.o zeroed.o
	gcc -m32 -Wall -g main.o zeroed.o -o main

main.o: main.c zeroed.h
	gcc -m32 -Wall -g -c main.c

zeroed.o : zeroed.s
	gcc -m32 -Wall -g -c zeroed.s

run: main
	./main

clean:
	rm *.o main