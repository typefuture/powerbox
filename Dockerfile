FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

COPY ./opt/* /usr/local/bin/

WORKDIR /app
ADD ./run.sh /run.sh
ENTRYPOINT ["/bin/sh", "/run.sh"]
