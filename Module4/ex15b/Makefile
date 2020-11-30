main: main.o greater_date.o
	gcc -Wall -g main.o greater_date.o -o main
		
greater_date.o: greater_date.s greater_date.h
	gcc -Wall -g -c greater_date.s
					
main.o: main.c greater_date.h
	gcc -Wall -g -c main.c

run: main
	./main

clean: 
	rm -f *.o main

