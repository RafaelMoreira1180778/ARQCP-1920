main: main.o sumfirstbyte.o
	gcc -m32 -Wall -g main.o sumfirstbyte.o -o main

main.o: main.c sumfirstbyte.h
	gcc -m32 -Wall -g -c main.c

sumfirstbyte.o : sumfirstbyte.s
	gcc -m32 -Wall -g -c sumfirstbyte.s

run: main
	./main

clean:
	rm *.o main