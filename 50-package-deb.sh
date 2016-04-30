#!/bin/bash

# This script prepares debian packages with compiled binaries.

BUILD_DIR=build
TARGET_DIR=$BUILD_DIR/target
PKG_DIR=$BUILD_DIR/pkg-deb

PREFIX=usr/local

rm -rf $PKG_DIR
mkdir -p $PKG_DIR

mkdir -p $PKG_DIR/libtango9/$PREFIX
mkdir -p $PKG_DIR/libtango9-dev/$PREFIX/lib
mkdir -p $PKG_DIR/tango9-db/$PREFIX/bin
mkdir -p $PKG_DIR/tango9-tools/$PREFIX/bin
mkdir -p $PKG_DIR/tango9-starter/$PREFIX/bin
mkdir -p $PKG_DIR/tango9-accesscontrol/$PREFIX/bin
mkdir -p $PKG_DIR/tango9-test/$PREFIX/bin

cp -r $TARGET_DIR/lib $PKG_DIR/libtango9/$PREFIX/
mv $PKG_DIR/libtango9/$PREFIX/lib/pkgconfig $PKG_DIR/libtango9-dev/$PREFIX/lib/
cp -r $TARGET_DIR/include packages/libtango9-dev/$PREFIX/

cp $TARGET_DIR/bin/DataBaseds $PKG_DIR/tango9-db/$PREFIX/bin/
cp $TARGET_DIR/bin/Starter $PKG_DIR/tango9-starter/$PREFIX/bin/
cp $TARGET_DIR/bin/TangoAccessControl $PKG_DIR/tango9-accesscontrol/$PREFIX/bin/
cp $TARGET_DIR/bin/TangoTest $PKG_DIR/tango9-test/$PREFIX/bin/
cp $TARGET_DIR/bin/tango_admin $PKG_DIR/tango9-tools/$PREFIX/bin/

sed -i "s|^prefix=.*$|prefix=/$PREFIX|g" $PKG_DIR/libtango9-dev/$PREFIX/lib/pkgconfig/tango.pc
sed -i "s|^prefix=.*$|prefix=/$PREFIX|g" $PKG_DIR/libtango9-dev/$PREFIX/lib/pkgconfig/log4tango.pc
