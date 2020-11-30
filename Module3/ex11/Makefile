main: main.o greater20.o
	gcc -m32 -Wall -g main.o greater20.o -o main

main.o: main.c greater20.h
	gcc -m32 -Wall -g -c main.c

greater20.o : greater20.s
	gcc -m32 -Wall -g -c greater20.s

run: main
	./main

clean:
	rm *.o main