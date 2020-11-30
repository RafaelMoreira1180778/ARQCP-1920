main: main.o multiple.o
	gcc -m32 -Wall -g main.o multiple.o -o main

main.o: main.c multiple.h
	gcc -m32 -Wall -g -c main.c

concat.o : multiple.s
	gcc -m32 -Wall -g -c multiple.s

run: main
	./main

clean:
	rm *.o main