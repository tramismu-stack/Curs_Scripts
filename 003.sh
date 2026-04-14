#!/bin/bash

read -p "Introdueix el valor de X: " X
read -p "Introdueix el valor de Y: " Y

echo "Has introduit ${X} i ${Y}"

SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"

RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"

MULTIPLICACION=$((X*Y))
echo "${X}*${Y}=${MULTIPLICACION}"

DIVISION=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${DIVISION}"