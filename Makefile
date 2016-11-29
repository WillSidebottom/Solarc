## This makefile compiles the Solarc program to return random values based on position
## the -lm option is to include the math.h header file for using sinusoidal functions in the program 

# The compiler to use for a C program, use g++ for C++ programs
CC = gcc

# Compiler flags
#  -std=c99 defines the specific version of C to use
#  -Wall turns on most, but not all compiler warnings
#  -Wextra enables extra warnings found
#  -Werror make all warnings into errors
CFLAGS = -std=c99 -Wall -Wextra -Werror -I -lm

# The build target executable
TARGET = spa_tester

all: $(TARGET)

$(TARGET): spa.o $(TARGET).o
	$(CC) $(CFLAGS) -o $(TARGET) spa.c $(TARGET).c -lm

clean:
	$(RM) $(TARGET) *.o
