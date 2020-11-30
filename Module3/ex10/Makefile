main: main.o concat.o
	gcc -m32 -Wall -g main.o concat.o -o main

main.o: main.c concat.h
	gcc -m32 -Wall -g -c main.c

concat.o : concat.s
	gcc -m32 -Wall -g -c concat.s

run: main
	./main

clean:
	rm *.o main