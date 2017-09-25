FROM alpine:latest
LABEL maintainer="toughIQ <toughiq@gmail.com>"

RUN apk add --no-cache bash ffmpeg

ENTRYPOINT ["/usr/bin/ffmpeg"]
