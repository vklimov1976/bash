#!/bin/bash

function localizer {
    echo "==> В функции localizer начальное значение а равно '$a'"
    local a
    echo "==> После объявления local значение а стало равным '$a'"
    a="localizer version"
    echo "==> При выходе из функции localizer значение а равно '$a'"
}

a="test"
echo "До вызова функции localizer значение а равно '$a'"
localizer
echo "После вызова функции localizer значение а равно '$a'"

