FROM node:lts-slim

WORKDIR /NeganCSL
COPY . .
RUN chmod +x ./*
RUN ./setup.sh