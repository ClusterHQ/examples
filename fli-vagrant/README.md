
# Getting started with `fli` in Vagrant

## QuickStart on Ubuntu 16.04

### Install `fli`

- Download and [Install Vagrant](https://www.vagrantup.com/)
- Set vm.config.box= “ubuntu/xenial64” in your Vagrantfile.
- `vagrant up`
- `vagrant ssh`
- `sudo apt install docker.io zfsutils-linux`
- `sudo fallocate -l 3G $HOME/zfs.disk && zpool create -f chq $HOME/zfs.disk`
- `sudo docker pull clusterhq/fli` 
- `sudo su -` 
- `alias fli="docker run --privileged -v /chq/:/chq/ -v /root:/root fli"`
- `fli setup --zpool chq`
- `fli config --url  http://flockerhub.com
- `fli config --token /path/to/your/authtoken.token

### (optional) Get `fli-docker`

> Note: this tool works with docker-compose. [Install Docker Compose](https://docs.docker.com/compose/install/)

- `curl -sSL https://api.bintray.com/packages/clusterhq/fli-docker/versions/_latest` 

### Try some examples

- `git clone http://github.com/clusterhq/fli-docker`
- `cd fli-docker/examples`


