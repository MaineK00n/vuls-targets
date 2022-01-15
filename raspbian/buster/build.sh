#!/bin/bash

wget -P raspbian/buster http://ftp.jaist.ac.jp/pub/raspberrypi/raspbian/archive/2020-02-14-13:48/root.tar.xz
docker image import raspbian/buster/root.tar.xz raspbian:buster
rm -f raspbian/buster/root.tar.xz
docker build -t vuls-target:raspbian_buster -f raspbian/buster/Dockerfile .