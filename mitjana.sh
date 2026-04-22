#!/bin/bash

Numeros=${#}
SUMA=0

if [[ ${#} -eq 0 ]]
then
echo "Hay que poner un parametro"
exit 1
fi

while [ ${#} -gt 0 ]; do
    SUMA=$((SUMA+${1}))
    shift
done

Mitjana=$(echo "scale=2; ${SUMA}/${Numeros}" | bc ) 

echo ${Mitjana}