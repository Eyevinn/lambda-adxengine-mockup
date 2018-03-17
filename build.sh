#!/bin/bash

if [ -d "./build" ] ; then rm -r ./build ; fi
if [ ! -d "./dist" ] ; then mkdir ./dist ; fi

mkdir ./build
cd ./build
cp ../package.json .
cp ../index.js .
npm install --only=production
zip -r ../dist/bundle.zip .
cd ../
rm -r ./build