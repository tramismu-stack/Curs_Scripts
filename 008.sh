#!/bin/bash

echo "Nom del script" ${0}
echo
echo "El PATH: $(dirname ${0} ) el fitxer seria $(basename ${0}) "

NUMERO_DE_PARAMETRES=${#}

if [[${NUMERO_DE_PARAMETRES} -eq 0 ]]
then
    echo "Usage: ${0} USER_NAME [USER_NAME] ..."
    exit 1
fi

echo "${*}"
echo
echo "${@}"

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    echo
done

X=1
while [[ ${#} -ge 1 ]]
do
    USER_NAME=${1}
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
    shift
done