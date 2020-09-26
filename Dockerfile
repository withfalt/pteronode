FROM node:latest-alpine
RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
CMD ["npm", "install", "--no-bin-links", "&&", "npm", "start"]
