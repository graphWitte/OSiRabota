CC = g++
CFLAGS = -Wall -pthread -O2

all: program

program: main.o math_func.o
	$(CC) $(CFLAGS) main.o math_func.o -o lab1_app

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

math_func.o: math_func.cpp
	$(CC) $(CFLAGS) -c math_func.cpp

clean:
	rm -f *.o lab1_app *.s