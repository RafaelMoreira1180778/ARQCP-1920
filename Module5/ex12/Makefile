main: main.o matrix.o find_matrix.o
	gcc -Wall -g main.o matrix.o find_matrix.o -o main

main.o: main.c matrix.h
	gcc -Wall -g -c main.c

matrix.o : matrix.c matrix.h
	gcc -Wall -g -c matrix.c

find_matrix.o : find_matrix.c matrix.h
	gcc -Wall -g -c find_matrix.c
	
run: main
	./main

valgrind:
	valgrind ./main

clean:
	rm *.o main
