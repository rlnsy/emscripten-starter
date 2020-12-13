CC=emcc

hello.o: hello.c

OBJS=hello.o
FUNS="_add"
FLGS=-s MODULARIZE -s EXPORTED_FUNCTIONS='[$(FUNS)]' -s EXPORTED_RUNTIME_METHODS='["ccall"]'
node: $(OBJS)
	$(CC) $(FLGS) $(OBJS)
web: $(OBJS)
	$(CC) $(FLGS) -s ENVIRONMENT='web' $(OBJS)
clean:
	rm ./a.out.js ./a.out.wasm *.o

