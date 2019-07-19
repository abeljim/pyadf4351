CC = gcc
CFLAGS	= -Wall -g -O2 -Wno-unused-variable
LDFLAGS	= -lm -lrt -lpthread  -lwiringPi

default: libadf4351.a


libadf4351.a: adf4351.o
	ar rcs $@ $^

adf4351.o: adf4351.c adf4351.h
	$(CC) -c $< $(LDFLAGS)

clean:
	rm -f  *.o *.a




