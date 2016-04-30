# tango-cs-build

A set of scripts that help to build and create .deb packages for Tango Controls
on Ubuntu 16.04.

This may be used to build packages for other systems, like Fedora or Arch. Two
scripts have to be modified:

* `00-pull-dependencies.sh` - alter dependency names
* `60-package-deb.sh`

## Precompiled packages

Packages are located in the repository/apt directory in this repo. You may
download and install these packages using `dpkg` or `apt`.

**Note that the packages have no dependencies declared!** Make sure you have
all the dependencies listed at the end of this document.

### Using `dpkg`

```bash
$ wget https://rawgit.com/mliszcz/tango-cs-build/master/repository/apt/tango9-starter_9.2.2_amd64.deb
$ dpkg -i tango9-starter_9.2.2_amd64.deb
```

### Using `apt`

```bash
$ sudo apt-get install apt-transport-https
$ sudo echo "deb [trusted=yes] https://rawgit.com/mliszcz/tango-cs-build/master/repository/ apt/" >> /etc/apt/sources.list
$ sudo apt-get update
$ sudo apt-get install tango9-starter
```

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
