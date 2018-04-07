#!/bin/bash

#
# Make sure we're in the right directory
#
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"
cd ..

cd horten
yarn install
yarn link
cd ..

cd horten-websocket
yarn install
yarn link horten
yarn link
cd ..

cd deepcolour
yarn install
yarn link
cd ..


cd horten-control
yarn install
yarn link horten deepcolour
yarn link
cd ..

cd horten-server
yarn install
yarn link horten horten-control horten-websocket
yarn link
cd ..

cd loopin
yarn install
yarn link horten
yarn link
cd ..

cd loopin-native
yarn install
yarn link loopin
cd ..

cd loopin-server
yarn install
yarn link horten loopin horten-server
yarn link
cd ..

cd loopin-shaders
yarn install
yarn link loopin loopin-native
yarn link
cd ..

cd loopin-test
yarn install
yarn link loopin loopin-native loopin-shaders
yarn link
cd ..
