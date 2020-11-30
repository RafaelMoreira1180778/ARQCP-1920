main: main.o matrix.o add_matrix.o
	gcc -Wall -g main.o matrix.o add_matrix.o -o main

main.o: main.c matrix.h
	gcc -Wall -g -c main.c

matrix.o : matrix.c matrix.h
	gcc -Wall -g -c matrix.c

add_matrix.o : add_matrix.c matrix.h
	gcc -Wall -g -c add_matrix.c
	
run: main
	./main

valgrind:
	valgrind ./main

clean:
	rm *.o main
