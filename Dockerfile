FROM hypriot/rpi-node:8.1

MAINTAINER Cedric Gatay <c.gatay@code-troopers.com>

RUN mkdir /app
RUN apt-get update && apt-get install nodejs-legacy libpcap-dev git 
WORKDIR /app
RUN git clone https://github.com/maddox/dasher.git && cd dasher && npm install

WORKDIR /app/dasher
CMD ["npm", "run", "start"]
