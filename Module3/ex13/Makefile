main: keep_positives.o main.o
	gcc -g -Wall keep_positives.o main.o -o main

keep_positives.o: keep_positives.s
	gcc -g -Wall -c keep_positives.s -o keep_positives.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o main

run: main
	./main
