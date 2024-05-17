CC=gcc
CFLAGS=-Wall -Werror -Wextra
SOURCES=s21_grep.c s21_grep.h
EXECUTABLE=s21_grep
TEST = test.sh
SUDO=sudo bash
FORMAT=clang-format -i
MINIVERTER=../../materials/build/run.sh

build:
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXECUTABLE)

test:
	$(CC) -o ./s21_grep $(CFLAGS) s21_grep.c
	bash ./test.sh

verter:
	$(SUDO) $(MINIVERTER) 

check:
	clang-format -style=Google -n *.c *.h

format:
	clang-format -style=Google -i *.c *.h

clean: 
	rm -rf s21_grep