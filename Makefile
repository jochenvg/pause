CC = gcc
CFLAGS =
DEPS =
OBJ = pause.o

.PHONY: all clean docker

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

bin/pause: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

docker: Dockerfile
	docker run --rm \
	       -v $(shell pwd)/bin:/usr/src/pause/bin \
				 $(shell docker build -q .)

all: bin/pause

clean:
	rm -f *.o
