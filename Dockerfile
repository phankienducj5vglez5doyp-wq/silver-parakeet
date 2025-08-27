FROM node:lts-slim

RUN apt-get update && apt-get install -y curl
WORKDIR /NeganCSL
COPY . .
RUN chmod +x ./*
RUN ./setup.sh