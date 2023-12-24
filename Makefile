
ifeq ($(OS),QNX)
	CFLAGS = -Wall -I $(PWD)/include -g
else
	CFLAGS = -Wall -lpthread -I $(PWD)/include -g
endif

OBJS = wake.o stats.o

all: adrestia
adrestia: adrestia.c $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

clean: 
	$(RM) adrestia $(OBJS)
