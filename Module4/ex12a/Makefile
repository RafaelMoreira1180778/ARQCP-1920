main: main.o activate.o
	gcc -m32 -Wall -g main.o activate.o -o main

main.o: main.c activate.h
	gcc -m32 -Wall -g -c main.c

activate.o : activate.c
	gcc -m32 -Wall -g -c activate.c

run: main
	./main

clean:
	rm *.o main