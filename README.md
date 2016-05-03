# tango-cs-build

A set of scripts that help to build and create .deb packages for Tango Controls
on Ubuntu 16.04.

This may be used to build packages for other systems, like Fedora or Arch. Two
scripts have to be modified:

* `00-pull-dependencies.sh` - alter dependency names
* `60-package-deb.sh`

## Precompiled packages

Packages are located in the `gh-pages` branch in the repository/apt directory
You may download and install these packages using `dpkg` or `apt`. Detailed
instructions are provided in the link below.

[Visit repository page.](https://mliszcz.github.io/tango-cs-build)

## Required dependecies

* libzmq5 (4.1.4-7)
* libmysqlclient-dev
  * libmysqlclient-dev
  * libmysqlclient20
  * zlib1g-dev
* libomniorb4-dev
  * libomniorb4-1
  * libomniorb4-dev
  * libomnithread3-dev
  * libomnithread3c2
  * ...
* libcos4-dev
* libzmq3-dev
* omniidl
