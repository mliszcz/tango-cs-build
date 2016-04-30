#!/bin/bash

# This script creates debian packages with compiled binaries.

BUILD_DIR=build
PKG_DIR=$BUILD_DIR/packages
PKG_DEB_DIR=$BUILD_DIR/packages-deb

mkdir -p $PKG_DIR/libtango9/DEBIAN
mkdir -p $PKG_DIR/libtango9-dev/DEBIAN
mkdir -p $PKG_DIR/tango9-db/DEBIAN
mkdir -p $PKG_DIR/tango9-tools/DEBIAN
mkdir -p $PKG_DIR/tango9-starter/DEBIAN
mkdir -p $PKG_DIR/tango9-accesscontrol/DEBIAN
mkdir -p $PKG_DIR/tango9-test/DEBIAN

cp debian-control/libtango9 $PKG_DIR/libtango9/DEBIAN/control
cp debian-control/libtango9-dev $PKG_DIR/libtango9-dev/DEBIAN/control
cp debian-control/tango9-db $PKG_DIR/tango9-db/DEBIAN/control
cp debian-control/tango9-tools $PKG_DIR/tango9-tools/DEBIAN/control
cp debian-control/tango9-starter $PKG_DIR/tango9-starter/DEBIAN/control
cp debian-control/tango9-accesscontrol $PKG_DIR/tango9-accesscontrol/DEBIAN/control
cp debian-control/tango9-test $PKG_DIR/tango9-test/DEBIAN/control

rm -rf $PKG_DEB_DIR
mkdir -p $PKG_DEB_DIR

dpkg-deb -Dv --build $PKG_DIR/libtango9 $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/libtango9-dev $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/tango9-db $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/tango9-tools $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/tango9-starter $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/tango9-accesscontrol $PKG_DEB_DIR
dpkg-deb --build $PKG_DIR/tango9-test $PKG_DEB_DIR

