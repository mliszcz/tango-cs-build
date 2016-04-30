#!/bin/bash

# development dependencies
apt-get install -y \
  build-essential \
  autoconf

# tango dependencies
apt-get install -y \
  libmysqlclient-dev \
  libzmq5 \
  libzmq3-dev \
  libomniorb4-dev \
  libcos4-dev \
  libomniorb4-dev \
  omniidl

# optinoal dependencies
# apt-get install -y mysql-server
