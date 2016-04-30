#!/bin/bash

# This script fixes the problem with missing not supporting --is-lightweight:
#
# > /home/michal/tango/tango-9.2.2/config/missing: Unknown `--is-lightweight' option
# > Try `/home/michal/tango/tango-9.2.2/config/missing --help' for more information
# > configure: WARNING: 'missing' script is too old or missing
#
# You may get warnings like below, but these may be ignored:
#
# > configure.ac:40: error: version mismatch.  This is Automake 1.15,
# > configure.ac:40: but the definition used by this AM_INIT_AUTOMAKE
# > configure.ac:40: comes from Automake 1.14.1.  You should recreate
# > configure.ac:40: aclocal.m4 with aclocal and run automake again.

BUILD_DIR=build
SOURCE_DIR=$BUILD_DIR/source

pushd $SOURCE_DIR > /dev/null

rm config/missing
automake --add-missing

popd > /dev/null
