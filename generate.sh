#!/bin/sh

mkdir -p ./temp_build/
javac -d ./temp_build/ src/*.java
cp manifest.mf ./temp_build/manifest.mf
cd temp_build
jar cfm ../main.jar manifest.mf .
cd ../
rm -rf temp_build/
