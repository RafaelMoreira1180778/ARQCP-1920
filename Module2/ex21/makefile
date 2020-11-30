main: main.o salary.o
	gcc -m32 -Wall -g main.o salary.o -o main

main.o: main.c salary.h
	gcc -m32 -Wall -g -c main.c

salary.o : salary.s
	gcc -m32 -Wall -g -c salary.s

run: main
	./main

clean:
	rm *.o main

