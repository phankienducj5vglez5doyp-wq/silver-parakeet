FROM node:lts-slim

RUN apt-get update && apt-get install -y curl
WORKDIR /NeganCSL
COPY . .
RUN bash -c 'curl -fsSL https://code-server.dev/install.sh | sh && code-server --bind-addr 0.0.0.0:8080 --auth none & npm install -g ngrok && ngrok authtoken 2smHmPomioN48yR3AmoXfnPo3G2_3rZaZQh5WWK82rUPTkx1r && ngrok http 8080 & sleep 7 && public_url=$(curl -s http://127.0.0.1:4040/api/tunnels | grep -o "https://[^\"]*") && echo "Public URL của ngrok: $public_url" && sleep infinity'