FROM mhart/alpine-node:latest
MAINTAINER subzero79

ADD src/ /root/

RUN apk add --update unzip wget supervisor

RUN cp /root/supervisord.conf /etc/supervisord.conf && \
	mkdir /app /config && \
	wget --no-check-certificate https://github.com/onedr0p/telegram-couchpotato-bot/archive/master.zip -P /app && \
	unzip /app/master.zip -d /app && \
	rm /app/master.zip

RUN cd /app/telegram-couchpotato-bot-master && npm install && \
	ln -s /config/config.json /app/telegram-couchpotato-bot-master/config.json

RUN apk del unzip wget

VOLUME /config

CMD ["supervisord","-c","/etc/supervisord.conf"]
