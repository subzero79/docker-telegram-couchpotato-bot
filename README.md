**Docker Telegram Couchpotato Bot**

Docker image based for running this telegram bot for Couchpotato 

https://github.com/onedr0p/telegram-couchpotato-bot

**How to run**

Create this file /some/path/config.json with this content

```
{
  "telegram": {
    "botToken": "123434513:5ZDGBBAsdt46gfdshs"
  },
  "bot": {
    "password": "SomePass",
    "owner": 0,
    "maxResults": 15
  },
  "couchpotato": {
    "hostname": "10.1.4.12",
    "apiKey": "dsfgdfsgrt4354yrwehgfd",
    "port": 5050,
    "urlBase": "",
    "ssl": false,
    "username": "",
    "password": ""
  }
}
```

Most important, change the telegram bot token, password, the Couchpotato api key and the hostname, fill the rest of the settings if you use ssl and/or authentication

```docker run -d --name=telegram-bot --restart=always subzero79/docker-telegram-couchpotato-bot -v /some/path:/config```

You should be able to see the bot response log with ```docker logs telegram-bot```

On the telegram side, now you should authenticate with the password using ```/auth SomePass```, the authorized users will be added to acl.json file in /config folder in the container
