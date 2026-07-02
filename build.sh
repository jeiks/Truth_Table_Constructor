#!/bin/bash

TARGET=TruthTable.jar

# Checking permissions:
find -type d -exec chmod 755 {} \;
find -type f -exec chmod 644 {} \;

# Cleaning:
patch -R -f --no-backup-if-mismatch --reject-file=- -p1 < diff.patch > /dev/null 2> /dev/null || true
rm -rf build

# Building:
patch -p1 < diff.patch 
mkdir build
cp -r audio/ examples/ fonts/ help/ images/ license/ application.properties build/
javac -d build $(shell find ./ -name "*.java")
cd build/ && jar cfe ../$TARGET Application . && cd ..

