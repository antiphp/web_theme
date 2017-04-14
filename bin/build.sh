#!/usr/bin/env bash

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BASE_DIR=$( cd "$CURRENT_DIR/.." && pwd )
DATETIME=$(date +"%Y%m%d_%H%M%S")

BUILD_DIR=$BASE_DIR/build/$DATETIME
mkdir -p $BUILD_DIR
cp $BASE_DIR/src/*.min.css $BUILD_DIR/
cp $BASE_DIR/src/manifest.json $BUILD_DIR/
cd $BUILD_DIR/
zip -r -FS ../web_theme.zip *

cd $CURRENT_DIR
