NAME := testing
OUT := -o build/$(NAME).bin
CFLAGS := -I src/incl/ -Wall -Werror -std=c++14 -pedantic -ggdb
CC := g++

cpp_source_files := $(shell find src/impl/ -name *.cpp)

.PHONY: build

build: $(cpp_opject_files)
	echo $(cpp_source_files)
	mkdir -p build && \
	$(CC) $(cpp_source_files) $(CFLAGS) $(OUT)

run:
	./build/$(NAME).bin

clean:
	rm -rf build
