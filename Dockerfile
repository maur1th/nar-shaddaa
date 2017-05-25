FROM python:2-alpine

RUN set -ex \
        && pip install --upgrade --no-cache-dir pip \
        && apk add --no-cache --virtual .build-deps \
                build-base \
                libffi-dev \
                openssl-dev \
        && pip install --no-cache-dir ansible \
        && apk del .build-deps

CMD sh
