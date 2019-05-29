FROM node:8

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman
COPY src .
ENTRYPOINT ["/bin/bash"]