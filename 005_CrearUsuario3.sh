#!/bin/bash

function Usage(){
    echo "Usage ${0} USER_NAME [COMMENT]"
    echo
    echo "Has de ser root"
    echo
    echo "Comment inclourà el nom complet d'usuari"
    exit 1
}

if [[ ${UID} -ne 0 ]]
then
    Usage
fi

if [[ ${#} -eq 0 ]]
then
    Usage
fi

USER_NAME=${1}

shift

COMMENTS=${*}

PASSWORD=$(date +%s%N | sha256sum | head -c8)

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
echo "Nom complet: ${COMMENTS} "
echo "Usuari creat ${USER_NAME}"
echo "Password generat: " ${PASSWORD}
echo "HostName: " ${HOSTNAME}
exit 0