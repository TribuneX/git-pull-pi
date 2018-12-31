FROM multiarch/alpine:armhf-v3.8 

RUN apk --update add git && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY run.sh .
RUN chmod +x run.sh

CMD ["sh","run.sh"]