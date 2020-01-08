FROM alpine:latest
RUN apk add --no-cache  curl socat bash
WORKDIR /tmp
ADD sendtelegram.sh /tmp
RUN chmod +x /tmp/sendtelegram.sh
CMD socat -u tcp-l:$LISTEN_PORT,fork system:/tmp/sendtelegram.sh