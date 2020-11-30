main: main.o sumeven.o
	gcc -m32 -Wall -g main.o sumeven.o -o main

main.o: main.c sumeven.h
	gcc -m32 -Wall -g -c main.c

sumeven.o : sumeven.s
	gcc -m32 -Wall -g -c sumeven.s

run: main
	./main

clean:
	rm *.o main