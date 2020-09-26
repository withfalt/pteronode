FROM node:current-alpine
RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
CMD ["/bin/ash", "/entrypoint.sh"]
