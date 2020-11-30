main: main.o add_byte.o
	gcc -Wall -g main.o add_byte.o -o main
		
add_byte.o: add_byte.s add_byte.h
	gcc -Wall -g -c add_byte.s
					
main.o: main.c add_byte.h
	gcc -Wall -g -c main.c

run: main
	./main

clean: 
	rm -f *.o main

