CC=g++

#compiler flags
CFLAGS=-c -Wall -g -std=c++11

#linker flags
LDFLAGS=

#source files
SOURCES=main.cpp

#*.cpp -> *.o
OBJECTS=$(SOURCES:.cpp=.o)

#executable name
EXECUTABLE=program

all: $(SOURCES) $(EXECUTABLE)

# linking step.
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

# compilation step.
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
