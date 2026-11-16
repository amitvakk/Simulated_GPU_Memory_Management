CXX      = g++
CXXFLAGS = -g -Wall -Weffc++ -std=c++11

SRCS = $(wildcard src/*.cpp)
OBJS = $(patsubst src/%.cpp,bin/%.o,$(SRCS))
HDRS = $(wildcard include/*.h)

all: bin/server

bin/server: $(OBJS)
	$(CXX) -o bin/server $(OBJS)

bin/%.o: src/%.cpp $(HDRS)
	$(CXX) $(CXXFLAGS) -c -Iinclude $< -o $@

clean:
	rm -f bin/*

.PHONY: all clean
