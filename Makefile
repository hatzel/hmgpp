CFLAGS = -std=c++11 -pedantic -Wall -Wextra
LFLAGS = $(CFLAGS)
LIBS = -lncurses++w -lncurses

OBJS = start.o

all: start

start: $(OBJS)
	$(CXX) $(LFLAGS) -o $@ $(OBJS) $(LIBS)

%.o: %.cpp
	$(CXX) -c $(CFLAGS) $<
	
clean:
	$(RM) *.o start

