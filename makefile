## This makefile compiles the Solarc program to return random values based on position
## the -lm option is to include the math.h header file for using sinusoidal functions in the program 
solarc: spa.c spa_tester.c
	gcc -o solarc spa.c spa_tester.c -lm
