#!/bin/bash -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
"${SCRIPT_DIR}/../jenkins/util/set-go-path.sh"
