# vuls-targets-docker

## support OS
- Debian
```terminal
$ docker build -t vuls-target:debian -f debian/Dockerfile .
```

- Ubuntu
```terminal
$ docker build -t vuls-target:ubuntu -f ubuntu/Dockerfile .
```

- CentOS
```terminal
$ docker build -t vuls-target:centos -f centos/Dockerfile .
```

## Usage
```terminal
$ docker run -itd -p 2222:22 --name vuls-target vuls-target:[tag]
$ ssh root@localhost -p 2222 -i .ssh/id_rsa
$ docker stop vuls-target
$ docker rm vuls-target
```