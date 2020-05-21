#!/bin/bash
set -ex

[[ ! -z "$SW_OAP_ADDRESS" ]] && export COLLECTOR_RIBBON_LISTOFSERVERS=${SW_OAP_ADDRESS} && echo "COLLECTOR_RIBBON_LISTOFSERVERS=$COLLECTOR_RIBBON_LISTOFSERVERS"
[[ ! -z "$SW_TIMEOUT" ]] && export COLLECTOR_RIBBON_READTIMEOUT=${SW_TIMEOUT} && echo "COLLECTOR_RIBBON_READTIMEOUT=$COLLECTOR_RIBBON_READTIMEOUT"

exec java -jar webapp/skywalking-webapp.jar --logging.config=webapp/logback.xml "$@"