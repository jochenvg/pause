CC = gcc
CFLAGS =
DEPS =
OBJ = pause.o

.PHONY: all clean

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

pause: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

all: pause

clean:
	rm -f *.o 
