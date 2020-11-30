main: add_byte.o main.o
	gcc -Wall add_byte.o main.o -o main
		
add_byte.o: add_byte.c add_byte.h
	gcc -Wall -c add_byte.c
					
main.o: main.c add_byte.h
	gcc -Wall -c main.c

run: main
	./main
		
clean: 
	rm -f *.o main
