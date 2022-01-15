#!/bin/bash

wget -P raspios/buster http://ftp.jaist.ac.jp/pub/raspberrypi/raspios_armhf/archive/2020-08-24-17:16/root.tar.xz
docker image import ./root.tar.xz raspios:buster
rm -f raspios/buster/root.tar.xz
docker build -t vuls-target:raspios_buster -f raspios/buster/Dockerfile .