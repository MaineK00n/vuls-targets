# vuls-targets

## Usage
### docker
```terminal
# For Raspbian
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

$ docker build --network host -t vuls-target:[os:release] -f [:os/:release]/Dockerfile .

$ docker run -itd -p 2222:22 --name vuls-target vuls-target:[tag]
$ ssh-keygen -f "$HOME/.ssh/known_hosts" -R "[127.0.0.1]:2222" && ssh -i vuls-targets-docker/.ssh/id_rsa -p 2222 root@127.0.0.1
$ docker stop vuls-target
$ docker rm vuls-target
```

### vagrant
```terminal
$ vagrant plugin install vagrant-vbguest vagrant-libvirt winrm winrm-elevated

$ cd <vagrant file root path>
$ vagrant up --provision
$ ssh-keygen -f "$HOME/.ssh/known_hosts" -R "[127.0.0.1]:2222" && ssh -i vuls-targets-docker/.ssh/id_rsa -p 2222 vagrant@127.0.0.1
$ vagrant destroy -f
```