FROM node:latest

WORKDIR /opt/apps/pkg_sender

COPY package.json package.json
RUN npm install
Run npm install -g npm@7.10.0
#RUN npm install http-server -g
COPY src src
COPY bin/run bin/run

CMD ["bin/run"]
