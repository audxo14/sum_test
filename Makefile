#Makefile
all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

main.o: sum.h main.cpp
	g++ -o main.o main.cpp

sum.o: sum.h sum.cpp
	g++ -o sum.o sum.cpp

clean:
	rm sum_test
	rm -f *.p
