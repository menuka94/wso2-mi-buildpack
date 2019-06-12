#!/usr/bin/env bash
set -exuo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )/.."
source .envrc

WSO2_MI_VERSION="1.0.0"

BUILD_SCRIPT_DIR=$(dirname $(dirname $0))

JDK_NAME="jdk-8u161-linux-x64.tar.gz"
JDK_LOCATION=${BUILD_SCRIPT_DIR}/../resources/${JDK_NAME}

echo ${BUILD_SCRIPT_DIR}
if [[ ! -f ${JDK_LOCATION} ]]; then
    echo "${JDK_LOCATION} is not available"
    exit 1
fi


