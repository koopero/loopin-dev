#!/bin/bash

git clone https://github.com/koopero/horten.git
cd horten
npm install
npm link
cd ..

git clone https://github.com/koopero/horten-websocket.git
cd horten-websocket
npm install
npm link horten
npm link
cd ..

git clone https://github.com/koopero/deepcolour.git
cd deepcolour
npm install
npm link
cd ..


git clone https://github.com/koopero/horten-control.git
cd horten-control
npm install
npm link horten deepcolour
npm link
cd ..

git clone https://github.com/koopero/horten-server.git
cd horten-server
npm install
npm link horten horten-control horten-websocket
npm link
cd ..

git clone https://github.com/koopero/loopin-native.git
cd loopin
npm install
npm link
cd ..

git clone https://github.com/koopero/loopin.git
cd loopin
npm install
npm link horten loopin-native
npm link
cd ..

git clone https://github.com/koopero/loopin-server.git
cd loopin-server
npm install
npm link horten loopin horten-server
npm link
cd ..
