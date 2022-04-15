FROM alpine

# ripgrep
COPY ./opt/rg /usr/local/bin/

WORKDIR /app
ADD ./run.sh /run.sh
ENTRYPOINT ["/run.sh"]