#!/bin/bash

wget -P raspbian/stretch http://ftp.jaist.ac.jp/pub/raspberrypi/raspbian/archive/2019-06-24-07:06/root.tar.xz
docker image import raspbian/stretch/root.tar.xz raspbian:stretch
rm -f raspbian/stretch/root.tar.xz
docker build -t vuls-target:raspbian_stretch -f raspbian/stretch/Dockerfile .