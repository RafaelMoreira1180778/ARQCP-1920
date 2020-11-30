main: main.o compute.o
	gcc -m32 -Wall -g main.o compute.o -o main

main.o: main.c compute.h
	gcc -m32 -Wall -g -c main.c

concat.o : compute.s
	gcc -m32 -Wall -g -c compute.s

run: main
	./main

clean:
	rm *.o main