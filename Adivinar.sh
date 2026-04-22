#!/bin/bash

NUMERO=$((RANDOM % 100 + 1))
echo ${NUMERO}
Intentos=5

while [ ${Intentos} -gt 0 ]; do
read -p "Intenta Adivinar el numero " N
if [ ${N} -eq ${NUMERO} ]
then 
    echo "Has ganado en" ${Intentos} "intentos"
    exit 
elif [ ${N} -gt ${NUMERO} ]
then
    Intentos=$((Intentos-1))
    echo "El numero es mas pequeño te quedan" ${Intentos} "intentos"
elif [ ${N} -lt ${NUMERO} ] 
then
    Intentos=$((Intentos-1))
    echo "El numero es mas grande te quedan" ${Intentos} "intentos"     
fi

done

if [ $Intentos -eq 0 ]
then
    echo "Has perdido el numero era: "$NUMERO 
    exit
fi

