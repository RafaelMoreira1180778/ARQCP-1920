main: main.o greater_date.o
	gcc -m32 -Wall -g main.o greater_date.o -o main

main.o: main.c greater_date.h
	gcc -m32 -Wall -g -c main.c

greater_date.o : greater_date.c
	gcc -m32 -Wall -g -c greater_date.c

run: main
	./main

clean:
	rm *.o main