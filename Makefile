all:
	emcc hello.c -s MODULARIZE -s EXPORTED_FUNCTIONS='["_add"]' -s EXPORTED_RUNTIME_METHODS='["ccall"]'
clean:
	rm ./a.out.js ./a.out.wasm

