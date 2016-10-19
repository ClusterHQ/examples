
# Getting started with `fli` in Vagrant

## QuickStart on Ubuntu 16.04

### Install `fli`

> Note: the Vagrantfile has the necessary steps where we get dependencies and configure storage. To edit, open the Vagrantfile and scroll to the bottom.

- Download and [Install Vagrant](https://www.vagrantup.com/)
- `git checkout https://github.com/ClusterHQ/examples`
- `cd fli-vagrant`
- `vagrant up && vagrant provision`
- `vagrant ssh`
- `fli setup --zpool chq`
- `fli config --url  http://flockerhub.com`
- `fli config --token /path/to/your/authtoken.token`

### (optional) Get `fli-docker`

> Note: this tool works with docker-compose. [Install Docker Compose](https://docs.docker.com/compose/install/)

- `curl -sSL https://api.bintray.com/packages/clusterhq/fli-docker/versions/_latest` 

### Try some examples

- `git clone http://github.com/clusterhq/fli-docker`
- `cd fli-docker/examples`


