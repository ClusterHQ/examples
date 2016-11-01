
# Getting started with `fli` in Vagrant

## QuickStart on Ubuntu 16.04

### Install `fli`

> Note: the Vagrantfile has the necessary steps where we get dependencies and configure storage. To edit, open the Vagrantfile and scroll to the bottom.

- Download and [Install Vagrant](https://www.vagrantup.com/)
- `laptop:$ git checkout https://github.com/ClusterHQ/examples`
- `laptop:$ cd fli-vagrant`
- `laptop:$ vagrant up`
- `laptop:$ vagrant ssh`
- `ubuntu:~$ sudo su`
- `root:~$ fli setup --zpool chq`
- `root:~$ fli config --token /path/to/your/authtoken.token`

### (optional) Get `fli-docker`

> Note: this tool works with docker-compose. [Install Docker Compose](https://docs.docker.com/compose/install/)

- `root:~$ curl -o /usr/local/bin/fli-docker  -sSL https://some.url.com/packages/clusterhq/fli-docker/versions/_latest`
- `root:~$ chmod +x /usr/local/bin/fli-docker`

### Try some examples

- `root:~$ git clone http://github.com/clusterhq/fli-docker`
- `root:~$ cd fli-docker/examples`
- `root:~$ fli-docker run -f fli-manifest.yml -p myprojectname -c`


