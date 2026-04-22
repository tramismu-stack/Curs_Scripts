#!/bin/bash
Pares=0
Impares=0

while [ ${#} -gt 0 ]; do
    Modul=$(($1 % 2))
    if [[ ${Modul} -gt 0 ]]
    then
        Impares=$((Impares+1))
    else
        Pares=$((Pares+1))
    fi
    shift
done
echo "Pares:" $Pares "Impares:" $Impares