# telegram-sendmessage
A simple and lightweight container to send Telegram messages, it can be used solo, as sidecar container or even to deploy a service to your stack.

## Environment variables

### BOT_TOKEN
The token of your bot.
### LISTEN_PORT
The port that the container will listen.

## Usage
Very simple, run the container and start sending messages to UserID or GroupID:
```
[pedro@~/projetos] docker run -d --name telegramsendmessage -e BOT_TOKEN='885937569:AAF480nKhsVgGOpZ4c-l6ogcfI79a-XYW8k' -e LISTEN_PORT=7777 -p7777:7777 pedropilla/telegramsendmessage
```

Example:
```
[pedro@~/projetos] echo 199655691 'hello world'|nc 172.17.0.2 7777
[pedro@~/projetos] docker logs telegramsendmessage
/**********************************************************************************/
SENDING TO:199655691 -  MESSAGE: hello world
{"ok":true,"result":{"message_id":12,"from":{"id":885937569,"is_bot":true,"first_name":"pedropilla-testbot","username":"pedropilla_testbot"},"chat":{"id":199655691,"first_name":"Pedro","last_name":"Pilla","username":"pedropilla","type":"private"},"date":1578493002,"text":"hello world"}}
```


