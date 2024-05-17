CC=gcc
CFLAGS=-Wall -Werror -Wextra
SOURCES=s21_cat.c s21_cat.h
EXECUTABLE=s21_cat
TEST = test_cat.sh
SUDO=sudo bash
MINIVERTER=../../materials/build/run.sh

build:
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXECUTABLE)

test:
	$(CC) -o ./s21_cat $(CFLAGS) s21_cat.c
	bash ./test_cat.sh

verter:
	$(SUDO) $(MINIVERTER) 

check:
	clang-format -style=Google -n *.c *.h

format:
	clang-format -style=Google -i *.c *.h

clean: 
	rm -rf s21_cat
