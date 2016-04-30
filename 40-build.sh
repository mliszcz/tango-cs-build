#!/bin/bash

# This script builds the packages using autotools.

BUILD_DIR=build
SOURCE_DIR=$BUILD_DIR/source
TARGET_DIR_ABS=$PWD/$BUILD_DIR/target

pushd $SOURCE_DIR > /dev/null

./configure \
  --prefix $TARGET_DIR_ABS \
  --disable-java \
  --with-omni=/usr \
  --with-mysqlclient-lib=/usr/lib/x86_64-linux-gnu

make

make install

popd > /dev/null
