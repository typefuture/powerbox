FROM alpine

COPY ./opt/* /usr/local/bin/

WORKDIR /app
ADD ./run.sh /run.sh
ENTRYPOINT ["/bin/sh", "/run.sh"]