#!/bin/bash

wget -P raspbian/stretch http://ftp.jaist.ac.jp/pub/raspberrypi/raspbian/archive/2019-06-24-07:06/root.tar.xz
cat raspbian/stretch/root.tar.xz | docker import - r/raspbian:stretch
rm -f raspbian/stretch/root.tar.xz
docker build -t vuls-target:raspbian_stretch -f raspbian/stretch/Dockerfile .