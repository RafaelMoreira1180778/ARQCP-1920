main: main.o duplicates.o
	gcc -m32 -Wall -g main.o duplicates.o -o main

main.o: main.c duplicates.h
	gcc -m32 -Wall -g -c main.c

duplicates.o : duplicates.s
	gcc -m32 -Wall -g -c duplicates.s

run: main
	./main

clean:
	rm *.o main