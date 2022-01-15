#!/bin/bash

wget -P raspbian/jessie http://ftp.jaist.ac.jp/pub/raspberrypi/raspbian/archive/2017-08-17-09:07/root.tar.xz
docker image import raspbian/jessie/root.tar.xz raspbian:jessie
rm -f raspbian/jessie/root.tar.xz
docker build -t vuls-target:raspbian_jessie -f raspbian/jessie/Dockerfile .