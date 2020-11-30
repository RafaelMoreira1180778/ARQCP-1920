main: main.o
	gcc -Wall main.o -o main
					
main.o: main.c
	gcc -Wall -c main.c

run: main
	./main

valgrind: main
	valgrind ./main
		
clean: 
	rm -f *.o main