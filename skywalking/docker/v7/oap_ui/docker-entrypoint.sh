#!/bin/bash
set -ex

exec java -jar webapp/skywalking-webapp.jar --logging.config=webapp/logback.xml "$@"