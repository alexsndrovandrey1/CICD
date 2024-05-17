#!/bin/bash

scp /home/leatrice/SCHOOL21/DO6_CICD-2/builds/AUhgASxq/0/students/DO6_CICD.ID_356283/leatrice_student.21_school.ru/DO6_CICD-2/src/cat/s21_cat leatrice2@10.10.0.1:/usr/local/bin
scp /home/leatrice/SCHOOL21/DO6_CICD-2/builds/AUhgASxq/0/students/DO6_CICD.ID_356283/leatrice_student.21_school.ru/DO6_CICD-2/src/grep/s21_grep leatrice2@10.10.0.1:/usr/local/bin
ssh leatrice2@10.10.0.1 ls -lah /usr/local/bin