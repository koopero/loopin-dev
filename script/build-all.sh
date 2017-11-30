#!/bin/bash

#
# Make sure we're in the right directory
#
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"
cd ..

cd horten-websocket
gulp
cd ..

cd horten-control
webpack
cd ..
