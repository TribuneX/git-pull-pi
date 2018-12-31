FROM arm32v6/alpine:3.8

COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY run.sh .
RUN chmod +x run.sh

CMD ["sh","run.sh"]