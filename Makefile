mylibrary:
	g++ mylibrary.cpp -o mylibrary.o

second:
	g++ second.cpp -o second.o

all: mylibrary.o second.o
	g++ -o test main.cpp mylibrary.o second.o

run: all
	./test

clean:
	rm -rf *.o
	rm -rf test
