#!/bin/bash

set -ex

CLASSPATH="config:$CLASSPATH"
for i in oap-libs/*.jar
do
    CLASSPATH="$i:$CLASSPATH"
done

echo "Configuration files:"
ls -lt config

exec java ${JAVA_OPTS} -classpath $CLASSPATH \
 org.apache.skywalking.oap.server.starter.OAPServerStartUp "$@"