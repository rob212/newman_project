FROM node:8

RUN npm install -g newman 

WORKDIR /etc/newman
COPY /collections .
WORKDIR /etc/postman
COPY /environments .
ENTRYPOINT [ "newman" ]