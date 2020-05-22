FROM openjdk:8-jre-alpine

LABEL maintainer="yang68ming@163.com"

ENV SKYWALKING_VERSION=7.0.0 \
    TZ=Asia/Shanghai \
    PACKAGE_NAME=apache-skywalking-apm-es7 \
    DIST_NAME=apache-skywalking-apm-bin-es7

ADD http://mirrors.tuna.tsinghua.edu.cn/apache/skywalking/${SKYWALKING_VERSION}/${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz  /

# logs locations in /$DIST_NAME/logs folder.
RUN set -ex; \
    ln -sf /usr/share/zoneinfo/$TZ  /etc/localtime; \
    echo $TZ > /etc/timezone; \
    tar -zxvf /${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz; \ 
    cp -r $DIST_NAME/agent/ /; \
    cp $DIST_NAME/agent/optional-plugins/apm-trace-ignore-plugin-7.0.0.jar /agent/plugins/ \
    cp apm-trace-ignore-plugin.config /agent/config/. \
    rm -rf "${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz"; rm -rf "$DIST_NAME";
