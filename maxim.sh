#!/bin/bash

MAX=${1}

if [[ ${#} -eq 0 ]]
then
echo "Hay que poner un parametro"
exit 1
fi

while [ ${#} -gt 0 ]; do
    if [[ ${1} -gt ${MAX} ]]
    then
        MAX=$((${1}))
    fi
    shift
done

echo ${MAX}