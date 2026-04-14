#!/bin/bash

read -p "Introdueix X: " X

if [[ ${X} -le 5 ]]
then
    echo "Has introduit un numero menor  o igual que 5"
else
    echo "Has introduit un numero mes gran que 5"
fi