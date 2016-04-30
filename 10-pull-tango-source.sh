#!/bin/bash

# This script pulls tango sources into build/source.

TANGO_SOURCE_URL=http://downloads.sourceforge.net/project/tango-cs/tango-9.2.2.tar.gz

BUILD_DIR=build
SOURCE_DIR=$BUILD_DIR/source
SOURCE_TARBALL=$BUILD_DIR/tango.tar.gz

mkdir -p $BUILD_DIR

if [ ! -f $SOURCE_TARBALL ]; then
    wget -O $SOURCE_TARBALL $TANGO_SOURCE_URL
fi

rm -rf $SOURCE_DIR
mkdir -p $SOURCE_DIR

tar xf $SOURCE_TARBALL -C $SOURCE_DIR --strip-components=1
