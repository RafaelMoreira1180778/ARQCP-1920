main: main.o fill_student.o grades.o
	gcc -Wall -g main.o fill_student.o grades.o -o main

main.o: main.c fill_student.h
	gcc -Wall -g -c main.c

fill_student.o : fill_student.c fill_student.h
	gcc -Wall -g -c fill_student.c

grades.o: grades.s
	gcc -Wall -g -c grades.s

run: main
	./main

valgrind: main
	valgrind ./main

clean:
	rm *.o main