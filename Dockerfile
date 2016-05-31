FROM alpine
MAINTAINER jon@wildducktheories.com
ENV META_IMAGE=wildducktheories/y2j:alpine

RUN apk add --no-cache py-yaml jq

ADD y2j.sh /usr/local/bin/

RUN ln -sf y2j.sh /usr/local/bin/y2j && \
    ln -sf y2j.sh /usr/local/bin/j2y && \
    ln -sf y2j.sh /usr/local/bin/yq
