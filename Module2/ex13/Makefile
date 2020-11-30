main: main.o area.o
	gcc -m32 -Wall -g main.o area.o -o main

main.o: main.c area.h
	gcc -m32 -Wall -g -c main.c

area.o : area.s
	gcc -m32 -Wall -g -c area.s

run: main
	./main

clean:
	rm *.o main

