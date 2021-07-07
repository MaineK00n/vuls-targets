# vuls-targets-docker

## support OS
- Debian
  - 8, 9, 10
- Raspbian
  - jessie, stretch, buster
- Ubuntu
  - 14.04, 16.04, 18.04, 20.04
- RHEL
  - 6, 7, 8
- CentOS
  - 6, 7, 8
- Fedora
  - 32, 33, 34, 35
- Oracle Linux
  - 5, 6, 7, 8
- Amazon Linux
  - 1, 2
- AlmaLinux
  - 8
- Rocky Linux
  - 8
- Alpine Linux
  - 3.10, 3.11, 3.12, 3.13, 3.14
- openSUSE
  - leap
    - 15
- Arch Linux

## Usage
```terminal
# For Raspbian
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

$ docker build --network host -t vuls-target:[os:release] -f [:os/:release]/Dockerfile .
or
$ ./build-container.sh

$ docker run -itd -p 2222:22 --name vuls-target vuls-target:[tag]
$ ssh root@localhost -p 2222 -i .ssh/id_rsa
$ docker stop vuls-target
$ docker rm vuls-target
```