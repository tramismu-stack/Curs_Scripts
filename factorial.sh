Numero=1
Numero2=${1}

if [ ${#} -eq 0 ] 
then
    echo "Hay que poner un parametro"
    exit 1
elif [ ${Numero2} -gt 25 ] 
then
    echo "No puede ser mayor de 25"
    exit 1
elif [ ${Numero2} -lt 0 ]
then
    echo "No puede ser negativo"
    exit 1
fi

while [ ${Numero2} -gt 0 ]; do
    Numero=$((Numero*Numero2))
    Numero2=$((Numero2-1 ))
done
echo ${Numero}

