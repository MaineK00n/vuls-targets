# vuls-targets-docker

## support OS
- Debian
- Raspbian
- Ubuntu
- CentOS
- Fedora
- Oracle Linux
- Amazon Linux
- AlmaLinux
- Rocky Linux
- Alpine Linux
- openSUSE
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