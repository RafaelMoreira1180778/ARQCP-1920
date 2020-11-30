main: main.o calculator.o
	gcc -m32 -Wall -g main.o calculator.o -o main

main.o: main.c calculator.h
	gcc -m32 -Wall -g -c main.c

concat.o : calculator.s
	gcc -m32 -Wall -g -c calculator.s

run: main
	./main

clean:
	rm *.o main