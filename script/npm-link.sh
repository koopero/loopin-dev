#!/bin/bash

#
# Make sure we're in the right directory
#
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"
cd ..

cd horten
npm install
npm link
cd ..

cd horten-pers
npm install
npm link horten
npm link
cd ..

cd horten-websocket
npm install
npm link horten
npm link
cd ..

cd deepcolour
npm install
npm link
cd ..

cd horten-control
npm install
npm link horten deepcolour
npm link
cd ..

cd horten-server
npm install
npm link horten horten-control horten-websocket
npm link
cd ..

cd loopin
npm install
npm link horten
npm link
cd ..

cd loopin-native
npm install
npm link loopin horten
cd ..

cd loopin-server
npm install
npm link horten loopin horten-server
npm link
cd ..

cd loopin-shaders
npm install
npm link loopin loopin-native
npm link
cd ..

cd loopin-test
npm install
npm link loopin loopin-native loopin-shaders
npm link
cd ..


cd loopin-base
npm install
npm link loopin loopin-native loopin-shaders loopin-server
npm link
cd ..
