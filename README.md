**Docker Telegram Couchpotato Bot**

Docker image based for running this telegram bot for Couchpotato 

https://github.com/onedr0p/telegram-couchpotato-bot

**How to run**

Create this file /some/path/config.json with this content

```
{
  "telegram": {
    "botToken": ""
  },
  "couchpotato": {
    "hostname": "",
    "apiKey": "",
    "port": 5050,
    "urlBase": "",
    "ssl": false,
    "username": "",
    "password": ""
  },
  "debug": false
}
```

Most important, change the telegram bot token, the Couchpotato api key and the hostname, fill the rest of the settings if you use ssl and/or authentication

```docker run -d --name=telegram-bot --restart=always subzero79/docker-telegram-couchpotato-bot -v /some/path:/config```

You should be able to see the bot response log with ```docker logs telegram-bot```
