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

echo "Vamos a calcular el factorial de $1"
n=$1
producto=1

for (( i=1;i<=n;i++ ))
do
    producto=$((producto*i))
done

echo "El factorial de $n es $producto"

exit 0