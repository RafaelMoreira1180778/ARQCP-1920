main: main.o fill_s2.o
	gcc -Wall -g main.o fill_s2.o -o main
		
fill_s2.o: fill_s2.s fill_s2.h
	gcc -Wall -g -c fill_s2.s
					
main.o: main.c fill_s2.h
	gcc -Wall -g -c main.c

run: main
	./main

valgrind: main
	valgrind ./main

clean: 
	rm -f *.o main
