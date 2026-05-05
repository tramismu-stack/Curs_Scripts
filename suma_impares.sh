#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Error:se requiere un unico parametro"
    exit 1
fi


if ! [[ "$1" =~ ^[0-9]+$ ]]; 
then
    echo "Error se requiere un numero"
    exit 1
fi

echo "Vamos a culcular el sumatorio de $1"
n=$1
suma=0


for (( i=1;i<=n;i+=2 ))
do
    echo "1 $i $n"
    suma=$((suma+i))
done

echo "La suma de los impares entre 1 y $n vale $suma"

exit 0