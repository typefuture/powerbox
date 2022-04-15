FROM alpine

# ripgrep
COPY ./opt/rg /usr/local/bin/
# bat
COPY ./opt/bat /usr/local/bin/
# fd
COPY ./opt/fd /usr/local/bin/

WORKDIR /app
ADD ./run.sh /run.sh
ENTRYPOINT ["/run.sh"]