FROM node:current-alpine
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite python2 python3 make cmake gcc
RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/ash", "/entrypoint.sh"]
