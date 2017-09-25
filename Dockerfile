FROM alpine:latest
LABEL maintainer="toughIQ <toughiq@gmail.com>"

RUN apk add --no-cache bash ffmpeg \
    && mkdir /work
    
VOLUME /work
WORKDIR /work

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["/usr/bin/ffmpeg -h"]
