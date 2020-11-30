main: main.o activate.o
	gcc -m32 -Wall -g main.o activate.o -o main

main.o: main.c activate.h
	gcc -m32 -Wall -g -c main.c

activate.o : activate.s
	gcc -m32 -Wall -g -c activate.s

run: main
	./main

clean:
	rm *.o main