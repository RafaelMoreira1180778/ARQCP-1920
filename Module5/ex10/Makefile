main: main.o new_str.o
	gcc -Wall -g main.o new_str.o -o main

main.o: main.c new_str.h
	gcc -Wall -g -c main.c

new_str.o : new_str.c new_str.h
	gcc -Wall -g -c new_str.c

run: main
	./main

clean:
	rm -f *.o main

valgrind:
	valgrind ./main

debug:
	gdb -tui ./main