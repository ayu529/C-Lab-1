# Variables
CC = gcc
CFLAGS = -g -Wall
OBJ1 = driver1.o linkedlist.o
OBJ2 = driver2.o linkedlist.o
TARGET1 = listtest1
TARGET2 = listtest2

# Default target
all: $(TARGET1) $(TARGET2)

# Rule for listtest1
$(TARGET1): $(OBJ1)
	$(CC) $(CFLAGS) -o $(TARGET1) $(OBJ1)

# Rule for listtest2
$(TARGET2): $(OBJ2)
	$(CC) $(CFLAGS) -o $(TARGET2) $(OBJ2)

# Rule for compiling driver1
driver1.o: driver1.c linkedlist.h
	$(CC) $(CFLAGS) -c driver1.c

# Rule for compiling driver2
driver2.o: driver2.c linkedlist.h
	$(CC) $(CFLAGS) -c driver2.c

# Rule for compiling linkedlist
linkedlist.o: linkedlist.c linkedlist.h
	$(CC) $(CFLAGS) -c linkedlist.c

# Clean up build files
clean:
	rm -f $(OBJ1) $(OBJ2) $(TARGET1) $(TARGET2)