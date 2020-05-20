FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0

LABEL maintainer="yang68ming@163.com"

ENV discovery.type=single-node \
    xpack.security.enabled=false \
    bootstrap.memory_lock=true \
    cluster.name=elasticsearch

USER root

COPY elasticsearch.yml /config/elasticsearch.yml

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && chown elasticsearch:elasticsearch config/elasticsearch.yml

USER elasticsearch