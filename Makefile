# Student's Makefile for the Performance Lab

CC = gcc
CFLAGS = -Wall
LIBS = -lm

OBJS = driver.o kernels.o

all: driver

driver: $(OBJS) defs.h
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o driver

clean: 
	-rm -f $(OBJS) driver core *~ *.o
