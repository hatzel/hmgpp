CFLAGS = -std=c++11 -pedantic -Wall -Wextra -ggdb
LFLAGS = $(CFLAGS)
LIBS = -lncurses++w -lncurses -lmenuw

OBJS = start.o

all: start

start: $(OBJS)
	$(CXX) $(LFLAGS) -o $@ $(OBJS) $(LIBS)

%.o: %.cpp
	$(CXX) -c $(CFLAGS) $<
	
clean:
	$(RM) *.o start

