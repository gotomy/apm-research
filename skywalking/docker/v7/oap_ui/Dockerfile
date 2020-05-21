FROM openjdk:8-jre-alpine

LABEL maintainer="yang68ming@163.com"

ENV SKYWALKING_VERSION=7.0.0 \
    TZ=Asia/Shanghai \
    PACKAGE_NAME=apache-skywalking-apm \
    DIST_NAME=apache-skywalking-apm-bin \
    JAVA_OPTS=" -Xms256M -Xmx512M" \
    SW_OAP_ADDRESS="oap:12800" \
    SW_TIMEOUT="20000"

ADD http://mirrors.tuna.tsinghua.edu.cn/apache/skywalking/${SKYWALKING_VERSION}/${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz  /

RUN apk add --no-cache \
    bash

RUN set -ex; \
    ln -sf /usr/share/zoneinfo/$TZ  /etc/localtime; \
    echo $TZ > /etc/timezone; \
    tar -zxvf /${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz; \ 
    rm -rf "${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz"; rm -rf "$DIST_NAME/config"; \
    rm -rf "$DIST_NAME/bin"; rm -rf "$DIST_NAME/oap-libs"; rm -rf "$DIST_NAME/agent";

WORKDIR $DIST_NAME

COPY docker-entrypoint.sh .
COPY logback.xml webapp/

EXPOSE 8080

ENTRYPOINT ["sh", "docker-entrypoint.sh"]