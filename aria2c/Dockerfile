FROM alpine:latest

MAINTAINER ensonmj <ensonmj@gmail.com>

WORKDIR /root

RUN apk update && \
    apk add --no-cache --update aria2

RUN mkdir -p /root/Downloads && \
    mkdir -p /root/.aria2

# user can add aria2.conf in /root/.aria2 to override this default conf
COPY files/aria2.conf /root/.config/aria2/aria2.conf

RUN touch /root/.aria2/session.dat && \
    touch /root/.aria2/dht.dat

# the folder to store downloadef files
VOLUME "/root/Downloads"
# user should make their own session.dat and dht.dat file for persistence
VOLUME "/root/.aria2"

EXPOSE 6800 16969

CMD ["aria2c"]
