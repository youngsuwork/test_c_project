app = test

app_objs = test.o

CC = gcc

CFLAGS = -g

LFLAGS = -lpthread

all: $(app_objs)
	$(CC) $(LFLAGS) $^ -o $(app)

$(app_objs): %.o:%.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(app_objs) $(app)


