# Program definitions and options
CC		= gcc
CFLAGS	= -Wall -std=gnu99 -c
CFLAGS	= -c
LDFLAGS	= -Wall
RM_F	= rm -f

# Source, object, and exe definitions
SRC		= $(wildcard *.c)
OBJS	= $(SRC:.c=.o)
EXE		= wander

.PHONY: all clean

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< wanddef.h

clean:
	$(RM_F) *.o
	$(RM_F) *.h.gch
	$(RM_F) $(EXE)
