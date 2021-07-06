# vuls-targets-docker

## support OS
- Debian
```terminal
$ docker build --network host -t vuls-target:debian:release -f debian/:release/Dockerfile .
```

- Ubuntu
```terminal
$ docker build --network host -t vuls-target:ubuntu:release -f ubuntu/:release/Dockerfile .
```

- CentOS
```terminal
$ docker build --network host -t vuls-target:centos:release -f centos/:release/Dockerfile .
```

- Alma Linux
```terminal
$ docker build --network host -t vuls-target:alma:release -f alma/:release/Dockerfile .
```

- Rocky Linux
```terminal
$ docker build --network host -t vuls-target:rocky:release -f rocky/:release/Dockerfile .
```

## Usage
```terminal
$ docker run -itd -p 2222:22 --name vuls-target vuls-target:[tag]
$ ssh root@localhost -p 2222 -i .ssh/id_rsa
$ docker stop vuls-target
$ docker rm vuls-target
```