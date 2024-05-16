#!/bin/bash

wget -P raspios/bullseye http://ftp.jaist.ac.jp/pub/raspberrypi/raspios_armhf/archive/2022-01-28-13:48/root.tar.xz
docker image import ./root.tar.xz raspios:bullseye
rm -f raspios/bullseye/root.tar.xz
docker build -t vuls-target:raspios_bullseye -f raspios/bullseye/Dockerfile .