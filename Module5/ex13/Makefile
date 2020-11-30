main: count.o matriz.o main.o
	gcc -m32 -Wall -g matriz.o count.o main.o -o main
		
matriz.o: matriz.c matriz.h
	gcc -m32 -Wall -g -c matriz.c

count.o: count.s matriz.h
	gcc -m32 -Wall -g -c count.s
					
main.o: main.c matriz.h
	gcc -m32 -Wall -g -c main.c

run: main
	./main

valgrind:
	valgrind ./main

clean: 
	rm -f *.o main