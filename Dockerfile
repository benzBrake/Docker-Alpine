#
# Alpine 3.13 CURL, HTTPS, CST_TIMEZONE
#

FROM alpine:3.13
LABEL maintainer="Ryan Lieu <github-benzBrake@woai.ru>"

ONBUILD ARG TZ=Asia/Shanghai

RUN set -ex \
    && apk add --update --no-cache curl ca-certificates tzdata \
    && update-ca-certificates \
    && rm -rf /var/cache/apk/*
ONBUILD RUN set -ex \
    && ln -sf /usr/share/zoneinfo/$TZ /etc/localtime
