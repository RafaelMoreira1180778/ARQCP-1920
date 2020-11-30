main: fill_student.o main.o
	gcc -Wall fill_student.o main.o -o main
		
fill_student.o: fill_student.c fill_student.h
	gcc -Wall -c fill_student.c
					
main.o: main.c fill_student.h
	gcc -Wall -c main.c

run: main
	./main

valgrind: main
	valgrind ./main
		
clean: 
	rm -f *.o main