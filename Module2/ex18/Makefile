main: main.o conta.o
	gcc -m32 -Wall -g main.o conta.o -o main

main.o: main.c conta.h
	gcc -m32 -Wall -g -c main.c

conta.o : conta.s
	gcc -m32 -Wall -g -c conta.s

run: main
	./main

clean:
	rm *.o main

