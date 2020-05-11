#!/bin/bash

example=(aa 'bb cc' dd)
example[3]=ee

echo "example[@] = ${example[0]} элементов"
echo "массив example содержит ${#example[@]} элеметов"

for elt in "${example[@]}"; do
    echo "    Элемент = $elt"
done

