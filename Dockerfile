FROM alpine

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY run.sh .
RUN chmod +x run.sh

CMD ["sh","run.sh"]