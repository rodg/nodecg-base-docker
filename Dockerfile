FROM --platform=linux/amd64 node:16-bullseye

RUN npm install --global nodecg-cli
RUN apt install git -y

WORKDIR /nodecg

RUN nodecg setup 1.9.0

EXPOSE 9090

CMD ["node", "index.js"]
