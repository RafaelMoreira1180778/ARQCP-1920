main: main.o fill_s1.o
	gcc -Wall -g main.o fill_s1.o -o main
		
fill_s1.o: fill_s1.s fill_s1.h
	gcc -Wall -g -c fill_s1.s
					
main.o: main.c fill_s1.h
	gcc -Wall -g -c main.c

run: main
	./main

valgrind: main
	valgrind ./main

clean: 
	rm -f *.o main