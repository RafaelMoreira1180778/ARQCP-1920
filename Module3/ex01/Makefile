main: main.o zerocount.o
	gcc -m32 -Wall -g main.o zerocount.o -o main

main.o: main.c zerocount.h
	gcc -m32 -Wall -g -c main.c

zerocount.o : zerocount.s
	gcc -m32 -Wall -g -c zerocount.s

run: main
	./main

clean:
	rm *.o main