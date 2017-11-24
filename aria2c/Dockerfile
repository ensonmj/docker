FROM alpine:latest

MAINTAINER ensonmj <ensonmj@gmail.com>

WORKDIR /root

RUN apk update && \
    apk add --no-cache --update aria2

# user can add aria2.conf in /root/.aria2 to override this default conf
COPY files/aria2.conf /root/.config/aria2/aria2.conf

# 1) the folder to store downloadef files
# 2) user should make their own session.dat file for persistence
VOLUME ["/root/Downloads", "/root/.aria2"]

EXPOSE 6800 16969 16969/udp

CMD ["aria2c"]
