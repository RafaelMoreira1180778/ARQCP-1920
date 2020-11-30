main: main.o activate_invert.o
	gcc -m32 -Wall -g main.o activate_invert.o -o main

main.o: main.c activate_invert.h
	gcc -m32 -Wall -g -c main.c

activate_invert.o : activate_invert.s
	gcc -m32 -Wall -g -c activate_invert.s

run: main
	./main

clean:
	rm *.o main