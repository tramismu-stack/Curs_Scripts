#!/bin/bash

source $HOME/.telegram_bot/config

MENSAJE="${*}"

URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id="$ID" -d text="$MENSAJE" > /dev/null 2>&1  && echo "✅ Mensaje enviado a Telegram."
