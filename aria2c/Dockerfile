FROM alpine:edge

MAINTAINER ensonmj <ensonmj@gmail.com>

RUN apk update && \
    apk add --no-cache --update bash && \
    apk add --no-cache --update aria2

RUN mkdir -p /root/Downloads
RUN mkdir -p /root/.aria2

ADD files/aria2.conf /root/.config/aria2/aria2.conf
RUN touch /root/.aria2/session.dat
RUN touch /root/.aria2/dht.dat

WORKDIR /root

VOLUME ["/root/Downloads"]
VOLUME ["/root/.aria2"]

EXPOSE 6800
EXPOSE 16969

CMD ["aria2c"]
