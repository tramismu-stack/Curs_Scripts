#!/bin/bash

function Usage(){
    echo "USAGE: ${0} USER_NAME [COMMENTS]"
    echo "COMMENTS conté el nom complet"
    exit 1
}

NUMBER_PARAM=${#}
if [[${NUMBER_PARAM} -eq 0]]
then
    Usage
fi

echo "Numero de parametres: " ${NUMBER_PARAM}

SCRIPT_NAME={$0}

echo "Nom del script" ${0}

echo "Primer parametre: ${1} "
USER_NAME=${1}
echo "User_Name: ${USER_NAME} "


shift
Nom_Complet=${*}
echo "Nom complet: ${Nom_Complet} "