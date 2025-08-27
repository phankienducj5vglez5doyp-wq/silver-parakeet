FROM node:lts-slim

RUN apt-get update && apt-get install -y curl
RUN npm install ngrok
RUN ngrok config add-authtoken 2smHmPomioN48yR3AmoXfnPo3G2_3rZaZQh5WWK82rUPTkx1r
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --bind-addr 0.0.0.0:7979 --auth none &
RUN ngrok http 7979
