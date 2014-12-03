CFLAGS = -std=c++11 -pedantic -Wall -Wextra
LFLAGS = $(CFLAGS)
LIBS = -lncurses++w

OBJS = start.o

all: start

start: $(OBJS)
	$(CXX) $(LFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	$(RM) *.o start

start.o: start.cpp
