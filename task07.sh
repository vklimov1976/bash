#!/bin/bash

exec 0<$1
counter=1
while read line; do
    # Выражение $((...)) работает в контексте двойных ковычек, поэтому выражение 
    # echo "$counter: $line"
    # $((counter++))
    # можно упростить
    echo "$((counter++)): $line"
done

