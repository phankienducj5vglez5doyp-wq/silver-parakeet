FROM node:lts-slim

COPY . .
RUN chmod -R 777 .
RUN ./setup.sh