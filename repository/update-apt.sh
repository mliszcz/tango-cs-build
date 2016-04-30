#!/bin/bash

dpkg-scanpackages apt/ | gzip > apt/Packages.gz
