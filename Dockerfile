FROM node:8

RUN npm install -g newman
RUN npm install -g newman-reporter-html

COPY /data /etc/newman
ENTRYPOINT [ "newman" ]