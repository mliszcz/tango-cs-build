#!/bin/bash

# This script fixes the problem with libmysqlclient_r missing. libmysqlclient_r
# has been removed from repositories as libmysqlclient is already threadsafe
# (I guess).
#
# > checking for mysqlclient ... no
# > can't compile a simple app with mysql_connnect in it. bad.
# > configure: WARNING: No libmysqlclient_r libs found

BUILD_DIR=build
SOURCE_DIR=$BUILD_DIR/source

AC_PATH_MYSQL=m4/ac_path_mysqlclient.m4

pushd $SOURCE_DIR > /dev/null

cp $AC_PATH_MYSQL $AC_PATH_MYSQL.old
sed -i 's/mysqlclient_r/mysqlclient/g' $AC_PATH_MYSQL

autoconf # regenerate ./configure

popd > /dev/null
