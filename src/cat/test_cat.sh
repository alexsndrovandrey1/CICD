#!/bin/bash

GREEN='\e[32m'
NC='\e[0m'
RED='\e[31m'
EXE="./s21_cat.c"

printf "${GREEN}-----RUNNING TESTS-----${NC}\n"

failed=0
i=1

# TEST 1
cat ./tests/1.txt > a
gcc $EXE && ./a.out ./tests/1.txt > b
result=$(diff a b)

if [[ $result -eq 0 ]]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 2
cat -b ./tests/2.txt > a
gcc $EXE && ./a.out -b ./tests/2.txt > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# # TEST 3
# cat -n test2.txt test.txt > a
# gcc $EXE && ./a.out -n test2.txt test.txt > b
# result=$(diff a b)

# if [ $? -eq 0 ]; then
#     printf " TEST #$i ${GREEN}PASSED${NC}\n"
# else
#     printf " TEST #$i ${RED}FAILED${NC}\n"
#     printf "$result"
#     ((failed++))
# fi

# ((i++))

# TEST 4
cat -s ./tests/4.txt > a
gcc $EXE && ./a.out -s ./tests/4.txt > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 5
cat -t ./tests/1.txt > a
gcc $EXE && ./a.out -t ./tests/1.txt > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 6
cat -e ./tests/1.txt > a
gcc $EXE && ./a.out -e ./tests/1.txt > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 7
FILE=./tests/bytes.txt
FLAGS=
cat $FILE > a
gcc $EXE && ./a.out $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 8
FILE=./tests/bytes.txt
FLAGS=-b
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 9
FILE=./tests/bytes.txt
FLAGS=-n
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi

((i++))

# TEST 10
FILE=./tests/bytes.txt
FLAGS=-s
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi




((i++))

# TEST 11
FILE=./tests/test5.txt
FLAGS=-b
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


((i++))

# TEST 12
FILE=./tests/test3.txt
FLAGS=-e
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


((i++))

# TEST 13
FILE=./tests/test1.txt
FLAGS=-n
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


((i++))

# TEST 14
FILE=./tests/222.txt
FLAGS=-s
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


((i++))

# TEST 15
FILE=./tests/test1.txt
FLAGS=-t
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


((i++))

# TEST 16
FILE=./tests/test1.txt
FLAGS=-v
cat $FLAGS $FILE > a
gcc $EXE && ./a.out $FLAGS $FILE > b
result=$(diff a b)

if [ $? -eq 0 ]; then
    printf " TEST #$i ${GREEN}PASSED${NC}\n"
else
    printf " TEST #$i ${RED}FAILED${NC}\n"
    printf "$result"
    ((failed++))
fi


printf " ${GREEN}-----DONE[$((i - failed))/$((i))]-----${NC}\n"

rm a.out a b


if ((failed > 0)); then
    exit 1
fi