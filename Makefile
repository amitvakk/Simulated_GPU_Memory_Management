SRCS = $(wildcard src/*.cpp)
OBJS = $(patsubst src/%.cpp,bin/%.o,$(SRCS))

all: bin/server

bin/server: $(OBJS)
	g++ -o bin/server $(OBJS)

bin/%.o: src/%.cpp
	g++ -Wall -Weffc++ -std=c++11 -c -Iinclude $< -o $@

clean:
	rm -f bin/*
