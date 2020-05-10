#!/bin/bash

function show_usage {
	echo "Использование: $0 src_dir dst_dir"
	if [ $# -eq 0 ]; then
	    exit 99 # Выход с любым ненулевым кодом возврата
	else
	    exit $1
	fi
}

# Основная программа начинается здесь

if [ $# -ne 2 ]; then
	show_usage
else # существуют два аргумента
	if [ -d $1 ]; then
		src_dir=$1
	else
	    echo 'недопустимый каталог-источник'
	    show_usage
	fi
	if [ -d $2 ]; then
		dst_dir=$2
	else
	    echo 'недопустимый каталог-приемник'
	    show_usage
	fi
fi

printf "Каталог-источник: ${src_dir}\n"
printf "Каталог-приемник: ${dst_dir}\n"

