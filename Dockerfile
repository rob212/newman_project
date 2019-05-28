FROM node:8

RUN npm install -g newman
RUN npm install -g newman-reporter-html

WORKDIR /etc/newman
COPY /data .
ENTRYPOINT [ "newman" ]