FROM alpine:latest

MAINTAINER ensonmj <ensonmj@gmail.com>

WORKDIR /root

RUN apk update && \
    apk add --no-cache --update bash && \
    apk add --no-cache --update aria2

# user can add aria2.conf in /root/.aria2 to override this default conf
COPY files/aria2.conf .config/aria2/aria2.conf
COPY files/start.sh start.sh
COPY files/on-complete.sh on-complete.sh

# RUN chmod +x start.sh on-complete.sh

ENV SECRET=aria2c
ENV EXTERNAL_IP=""

# 1) the folder to store downloadef files
# 2) user should make their own session.dat file for persistence
VOLUME ["/root/Downloads", "/root/.aria2"]

EXPOSE 6800 16969 16969/udp

CMD ["start.sh"]
