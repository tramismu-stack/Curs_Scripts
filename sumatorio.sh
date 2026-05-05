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


for (( i=1;i<=n;i++ ))
do
    echo "valor de i $i"
    suma=$((suma+i))
done

echo "El sumatorio de $n vale $suma"

exit 0