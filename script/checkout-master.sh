#!/bin/bash

#
# Make sure we're in the right directory
#
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"
cd ..

for PROJECT in 'horten' 'horten-websocket' 'deepcolour' 'horten-control' 'horten-server' 'string2png' 'loopin' 'loopin-native' 'loopin-server' 'loopin-test'
do
cd "$PROJECT"
git pull
git checkout master
cd ..
done 
