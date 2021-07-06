#!/bin/bash

# Debian
docker build vuls-target:debian8 -f debian/8/Dockerfile .
docker build vuls-target:debian9 -f debian/9/Dockerfile .
docker build vuls-target:debian10 -f debian/9/Dockerfile .

# Ubuntu
docker build --network host -t vuls-target:ubuntu14.04 -f ubuntu/14.04/Dockerfile .
docker build -t vuls-target:ubuntu16.04 -f ubuntu/16.04/Dockerfile .
docker build -t vuls-target:ubuntu18.04 -f ubuntu/18.04/Dockerfile .
docker build -t vuls-target:ubuntu20.04 -f ubuntu/20.04/Dockerfile .

# CentOS
docker build -t vuls-target:centos6 -f centos/6/Dockerfile .
docker build -t vuls-target:centos7 -f centos/7/Dockerfile .
docker build -t vuls-target:centos8 -f centos/8/Dockerfile .
docker build -t vuls-target:centos_stream -f centos/stream/Dockerfile .

# Oracle Linux
docker build -t vuls-target:oracle5 -f oracle/5/Dockerfile .
docker build -t vuls-target:oracle6 -f oracle/6/Dockerfile .
docker build -t vuls-target:oracle7 -f oracle/7/Dockerfile .
docker build -t vuls-target:oracle8 -f oracle/8/Dockerfile .

# AlmaLinux
docker build -t vuls-target:alma8 -f alma/8/Dockerfile .

# Rocky Linux
docker build -t vuls-target:rocky8 -f rocky/8/Dockerfile .