
# Getting started with `fli` on Vagrant, Virtualbox and Ubuntu 16.04

## QuickStart on Ubuntu 16.04

### Install `fli`

> Note: the Vagrantfile has the necessary steps where we get dependencies and configure storage. To edit, open the Vagrantfile and scroll to the bottom.

- Download and [Install Vagrant](https://www.vagrantup.com/)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- `laptop:$ git checkout https://github.com/ClusterHQ/examples`
- `laptop:$ cd fli-vagrant`
- `laptop:$ vagrant up`
- `laptop:$ vagrant ssh`
- `ubuntu:~$ sudo su`
- `root:~$ fli setup --zpool chq`
- `root:~$ fli config --token /path/to/your/fh.token`

### (optional) Get started with `fli-docker`

> Note: this tool works with docker-compose. [Install Docker Compose](https://docs.docker.com/compose/install/)

Download the `fli-docker` binary from https://github.com/ClusterHQ/fli-docker/releases and move it to your bin directory. The releases are also available on Amazon S3.

```
$ wget https://s3.amazonaws.com/clusterhq-fli-docker/<RELEASE_VERSION>/fli-docker
$ mv fli-docker /usr/local/bin/fli-docker
$ chmod +x /usr/local/bin/fli-docker`
```

#### Try some examples

- `root:~$ git clone http://github.com/clusterhq/fli-docker`
- `root:~$ cd fli-docker/examples/srvdata`
- Modify the `fli-manifest.yml` with you snapshots or branches and volumeset.
- `root:~$ fli-docker run -f fli-manifest.yml -p myprojectname -c`


