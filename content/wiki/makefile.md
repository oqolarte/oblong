---
title: "Makefile Template"
date: 2024-01-03
draft: false
---

SOURCE: https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/


```
IDIR =../include
CC=gcc
CFLAGS=-I$(IDIR)

ODIR=obj
LDIR =../lib

LIBS=-lm

_DEPS = hellomake.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = hellomake.o hellofunc.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
    $(CC) -c -o $@ $< $(CFLAGS)

    hellomake: $(OBJ)
        $(CC) -o $@ $^ $(CFLAGS) $(LIBS)

        .PHONY: clean

        clean:
            rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
```
