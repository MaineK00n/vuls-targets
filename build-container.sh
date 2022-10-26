#!/bin/bash

# Debian
docker build -t vuls-target:debian8 -f debian/8/Dockerfile .
docker build -t vuls-target:debian9 -f debian/9/Dockerfile .
docker build -t vuls-target:debian10 -f debian/10/Dockerfile .
docker build -t vuls-target:debian11 -f debian/11/Dockerfile .

# Raspbian
raspbian/jessie/build.sh
raspbian/stretch/build.sh
raspbian/buster/build.sh

# RaspberryPi OS
raspios/buster/build.sh

# Ubuntu
docker build --network host -t vuls-target:ubuntu14.04 -f ubuntu/14.04/Dockerfile .
docker build -t vuls-target:ubuntu16.04 -f ubuntu/16.04/Dockerfile .
docker build -t vuls-target:ubuntu18.04 -f ubuntu/18.04/Dockerfile .
docker build -t vuls-target:ubuntu19.10 -f ubuntu/19.10/Dockerfile .
docker build -t vuls-target:ubuntu20.04 -f ubuntu/20.04/Dockerfile .
docker build -t vuls-target:ubuntu20.10 -f ubuntu/20.10/Dockerfile .
docker build -t vuls-target:ubuntu21.04 -f ubuntu/21.04/Dockerfile .
docker build -t vuls-target:ubuntu21.10 -f ubuntu/21.10/Dockerfile .
docker build -t vuls-target:ubuntu22.04 -f ubuntu/22.04/Dockerfile .
docker build -t vuls-target:ubuntu22.10 -f ubuntu/22.10/Dockerfile .

# RHEL
RHEL_USERNAME=username
RHEL_PASSWORD=password

docker build -t vuls-target:rhel6 --build-arg RHEL_USERNAME=${RHEL_USERNAME} --build-arg RHEL_PASSWORD=${RHEL_PASSWORD} -f rhel/6/Dockerfile .
docker build -t vuls-target:rhel7 --build-arg RHEL_USERNAME=${RHEL_USERNAME} --build-arg RHEL_PASSWORD=${RHEL_PASSWORD} -f rhel/7/Dockerfile .
docker build -t vuls-target:rhel8 --build-arg RHEL_USERNAME=${RHEL_USERNAME} --build-arg RHEL_PASSWORD=${RHEL_PASSWORD} -f rhel/8/Dockerfile .

# CentOS
docker build -t vuls-target:centos6 -f centos/6/Dockerfile .
docker build -t vuls-target:centos7 -f centos/7/Dockerfile .
docker build -t vuls-target:centos8 -f centos/8/Dockerfile .
docker build -t vuls-target:centos_stream8 -f centos/stream8/Dockerfile .
docker build -t vuls-target:centos_stream9 -f centos/stream9/Dockerfile .

# Fedora
docker build -t vuls-target:fedora32 -f fedora/32/Dockerfile 
docker build -t vuls-target:fedora33 -f fedora/33/Dockerfile 
docker build -t vuls-target:fedora34 -f fedora/34/Dockerfile 
docker build -t vuls-target:fedora35 -f fedora/35/Dockerfile 
docker build -t vuls-target:fedora36 -f fedora/36/Dockerfile 

# Oracle Linux
docker build -t vuls-target:oracle5 -f oracle/5/Dockerfile .
docker build -t vuls-target:oracle6 -f oracle/6/Dockerfile .
docker build -t vuls-target:oracle7 -f oracle/7/Dockerfile .
docker build -t vuls-target:oracle8 -f oracle/8/Dockerfile .

# Amazon Linux
docker build -t vuls-target:amzn1 -f amzn/1/Dockerfile .
docker build -t vuls-target:amzn2 -f amzn/2/Dockerfile .
docker build -t vuls-target:amzn2022 -f amzn/2022/Dockerfile .

# AlmaLinux
docker build -t vuls-target:alma8 -f alma/8/Dockerfile .

# Rocky Linux
docker build -t vuls-target:rocky8 -f rocky/8/Dockerfile .

# Alpine Linux
docker build -t vuls-target:alpine3.10 -f alpine/3.10/Dockerfile .
docker build -t vuls-target:alpine3.11 -f alpine/3.11/Dockerfile .
docker build -t vuls-target:alpine3.12 -f alpine/3.12/Dockerfile .
docker build -t vuls-target:alpine3.13 -f alpine/3.13/Dockerfile .
docker build -t vuls-target:alpine3.14 -f alpine/3.14/Dockerfile .
docker build -t vuls-target:alpine3.15 -f alpine/3.15/Dockerfile .

# openSUSE
docker build -t vuls-target:opensuse_leap15 -f opensuse/leap/15/Dockerfile .

# Arch Linux
docker build -t vuls-target:archlinux -f archlinux/Dockerfile .