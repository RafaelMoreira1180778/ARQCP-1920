main: main.o hotcold.o
	gcc -m32 -Wall -g main.o hotcold.o -o main

main.o: main.c hotcold.h
	gcc -m32 -Wall -g -c main.c

concat.o : hotcold.s
	gcc -m32 -Wall -g -c hotcold.s

run: main
	./main

clean:
	rm *.o main