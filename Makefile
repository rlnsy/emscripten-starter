CC=emcc

FUNS="_add"
FLGS=-s MODULARIZE -s EXPORTED_FUNCTIONS='[$(FUNS)]' -s EXPORTED_RUNTIME_METHODS='["ccall"]'
node: hello.c
	$(CC) $(FLGS) hello.c
web: hello.c
	$(CC) $(FLGS) -s ENVIRONMENT='web' hello.c
clean:
	rm ./a.out.js ./a.out.wasm
all: node

