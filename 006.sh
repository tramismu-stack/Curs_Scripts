echo "Password com un numero aleatori: " ${RANDOM}

echo "Password com a tres numeros aleatoris: " ${RANDOM}${RANDOM}${RANDOM}

PASSWORD=$(date +%s%N | sha256sum | head -c10)
echo ${PASSWORD}