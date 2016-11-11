
# Getting started with `fli` on Vagrant, Virtualbox and Ubuntu 16.04

## QuickStart on Ubuntu 16.04

### Install `fli`

> Note: the Vagrantfile has the necessary steps where we get dependencies and configure storage. To edit, open the Vagrantfile and scroll to the bottom.

- Download and [Install Vagrant](https://www.vagrantup.com/)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- `laptop:$ git clone https://github.com/ClusterHQ/examples`
- `laptop:$ cd fli-vagrant`
- `laptop:$ vagrant up`
- `laptop:$ vagrant ssh`
- `ubuntu:~$ sudo su`
- `root:~$ fli setup --zpool chq`

Visit https://flockerhub.clusterhq.com to get started with your account and authentication token.

### (optional) Get started with `fli-docker`

Download the latest `fli-docker` release, see below lings for more information.

- https://github.com/ClusterHQ/fli-docker
- https://github.com/ClusterHQ/fli-docker/releases

```
$ wget https://s3.amazonaws.com/clusterhq-fli-docker/<RELEASE_VERSION>/fli-docker
$ mv fli-docker /usr/local/bin/fli-docker
$ chmod +x /usr/local/bin/fli-docker`
```

#### Try some examples

- http://github.com/clusterhq/fli-docker/examples/


