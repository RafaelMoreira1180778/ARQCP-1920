main: main.o fill.o address.o
	gcc -Wall -g main.o fill.o address.o -o main

main.o: main.c fill.h
	gcc -Wall -g -c main.c

fill.o : fill.c fill.h
	gcc -Wall -g -c fill.c

address.o: address.s
	gcc -Wall -g -c address.s

run: main
	./main

clean:
	rm *.o main