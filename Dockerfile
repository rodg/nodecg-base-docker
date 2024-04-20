FROM --platform=linux/amd64 node:16-bullseye

RUN npm install --global nodecg-cli
RUN apt install git -y

WORKDIR /nodecg

RUN nodecg setup 2.2.1

EXPOSE 9090

CMD ["node", "index.js"]
