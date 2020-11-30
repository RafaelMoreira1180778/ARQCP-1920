main: main.o rotate.o
	gcc -m32 -Wall -g main.o rotate.o -o main

main.o: main.c rotate.h
	gcc -m32 -Wall -g -c main.c

rotate.o : rotate.s
	gcc -m32 -Wall -g -c rotate.s

run: main
	./main

clean:
	rm *.o main