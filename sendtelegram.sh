#!/bin/bash
BOT_TOKEN=$BOT_TOKEN
CURL="/usr/bin/curl"
COOKIE="/tmp/telegram_cookie-$(date "+%Y.%m.%d-%H.%M.%S")"
read -a MESSAGE
USER=${MESSAGE[0]}
MESSAGE=( "${MESSAGE[@]:1}" )
SUBJECT=${MESSAGE[@]}
echo "/**********************************************************************************/"
echo "SENDING TO:$USER -  MESSAGE: $SUBJECT"
RETURN=$(${CURL} -k -s -S --max-time 5 -c ${COOKIE} -b ${COOKIE} -X GET "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage?chat_id=${USER}&text=${SUBJECT}")
echo $RETURN
rm -f ${COOKIE}
exit 0