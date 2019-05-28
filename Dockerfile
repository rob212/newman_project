FROM node:8

RUN npm install -g newman 

WORKDIR /etc/newman
COPY /data .
ENTRYPOINT [ "newman" ]