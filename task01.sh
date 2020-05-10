#!/bin/bash

echo -n "Введите свое имя:"
read user_name

if [ -n "$user_name" ]; then
	echo "Привет $user_name!"
	exit 0
else
	echo "Вы не ввели имя!"
	exit 1
fi
