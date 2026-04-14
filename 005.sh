#!/bin/bash

function Usage(){
    echo "Usage ${0}"
    echo
    echo "Has de ser root"
    echo 
    echo "L'usuari no és pot repetir"
    exit 1
}

if [[ ${UID} -ne 0 ]]
then
    Usage
fi

read -p "Introdueix el nom complet: " COMMENTS

read -p "Introdueix el nom d'usuari: " USER_NAME

read -p "Introdueix el password: " PASSWORD

useradd -m -c "${COMMENTS}" ${USER_NAME}

if [[ ${?} -ne 0 ]]
then
    echo "Errada creant l'usuari"
    exit 1
fi

echo "${USER_NAME}:${PASSWORD}" | chpasswd

if [[ ${?} -ne 0 ]]
then
    echo "Errada canviant password"
    exit 1
fi

passwd -e ${USER_NAME}

exit 0