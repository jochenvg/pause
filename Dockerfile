FROM alpine

RUN apk add --no-cache build-base
WORKDIR /usr/src/pause
COPY . .
CMD make
