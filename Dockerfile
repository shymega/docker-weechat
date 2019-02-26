FROM alpine:3.8

LABEL maintainer="Dom Rodriguez <shymega@shymega.org.uk>"

ENV USER=weechat \
    HOME=/weechat \
    LANG=C.UTF-8 \
    TERM=xterm-256color

RUN apk --no-cache update && \
    apk --no-cache add \
    weechat weechat-perl \
    weechat-dev weechat-aspell \
    weechat-python aspell-en && \
    rm -rf /var/cache/apk/*

RUN mkdir -p $HOME && \
    addgroup weechat && \
    adduser -h $HOME -D -s /bin/bash \
        -G weechat weechat && \
    chown -R weechat:weechat $HOME

VOLUME $HOME/.weechat
WORKDIR $HOME
USER weechat

EXPOSE 9001

CMD ["weechat"]
