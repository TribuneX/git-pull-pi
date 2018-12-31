FROM resin/qemux86-64-alpine:3.8

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY run.sh .
RUN chmod +x run.sh

CMD ["sh","run.sh"]