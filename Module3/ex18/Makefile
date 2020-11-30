main: main.o sort_array.o
	gcc -m32 -Wall -g main.o sort_array.o -o main

main.o: main.c sort_array.h
	gcc -m32 -Wall -g -c main.c

sort_array.o : sort_array.s
	gcc -m32 -Wall -g -c sort_array.s

run: main
	./main

clean:
	rm *.o main