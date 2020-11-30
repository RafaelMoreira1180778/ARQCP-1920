main: main.o fill.o students.o
	gcc -Wall -g main.o fill.o students.o -o main

main.o: main.c fill.h
	gcc -Wall -g -c main.c

fill.o : fill.c fill.h
	gcc -Wall -g -c fill.c

students.o: students.s
	gcc -Wall -g -c students.s

run: main
	./main

valgrind:
	valgrind ./main

clean:
	rm *.o main