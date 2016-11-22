
# Getting started with `fli` on Vagrant, Virtualbox and Ubuntu 16.04

## QuickStart on Ubuntu 16.04

### Install `fli`

> Note: If you are using Vagrant 1.8.7 there is a known issue with `vagrant up` and `vagrant box add` where a version of curl vagrant comes with is bad. https://github.com/Varying-Vagrant-Vagrants/VVV/issues/354. If you get an error on `vagrant up` saying it cannot find the box, run `sudo rm /opt/vagrant/embedded/bin/curl` and try again.

- Download and [Install Vagrant](https://www.vagrantup.com/)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Make sure you have at least 1-2GB of memory to use.
- `laptop:$ git clone https://github.com/ClusterHQ/examples`
- `laptop:$ cd fli-vagrant`
- `laptop:$ vagrant up`
- `laptop:$ vagrant ssh`
- `ubuntu:~$ sudo su`
- `root:~$ fli setup --zpool chq`

You can visit [the rest of the fli documentation to continue](https://fli-docs.clusterhq.com/en/latest/GettingStarted.html#step-4-set-up-fli).

#### Clean up or restart

To clean up and re-provision your environment, perform the following.

```
laptop:$ vagrant destroy 
laptop:$ vagrant up
```

To pause and later resume your environment, perform the following.
```
laptop:$ vagrant suspend
laptop:$ vagrant resume
```

Visit https://flockerhub.clusterhq.com to get started with your account and authentication token.

### Versions Verified

 - Vagrant 1.8.7
 - Virtualbox 5.0.26 and 5.1.8

