FROM alpine:latest
LABEL maintainer="toughIQ <toughiq@gmail.com>"

RUN apk add --no-cache bash ffmpeg \
    && mkdir /work
    
VOLUME /work
WORKDIR /work

COPY run.sh /run.sh

RUN adduser -u 1000 -D -h /work -s /bin/bash converter && \
    chown -R converter /work && \
    chmod +x /run.sh
    
USER converter

ENTRYPOINT ["/run.sh"]
CMD ["/usr/bin/ffmpeg -h"]
