#!/bin/bash
set -e

BRIDGE_IP=$(ip ro get 8.8.8.8 | grep -oP '(?<=via )([\d\.]+)')
TOR_SERVICE_IP=$(getent hosts tor | awk '{ print $1 }')

exec /twister-core/twisterd -proxy=$TOR_SERVICE_IP:9050 -rpcuser=user -rpcpassword=pwd -rpcallowip=${BRIDGE_IP} -htmldir=/twister-html -printtoconsole -port=28333 $*
