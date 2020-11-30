main: main.o vecop.o
	gcc -m32 -Wall -g main.o vecop.o -o main

main.o: main.c vecop.h
	gcc -m32 -Wall -g -c main.c

vecop.o : vecop.s
	gcc -m32 -Wall -g -c vecop.s

run: main
	./main

clean:
	rm *.o main