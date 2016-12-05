# using Fli from .OVA (Open Virtual Format)

![alt tag](http://i.imgur.com/mByy4H6.jpg)

## Use `.ova` to launch a Fli client node.

### VirutalBox

#### Prerequisites

Install VirtualBox: https://www.virtualbox.org/wiki/Downloads

#### Download `.ova`

You have 2 different options for downloads. One is slightly smaller than the other which may reduce the download time, but it adds one extra step after you start the VM.

1. (1.2GB) OVA with a pre-configured ZPOOL named `chq`, all you need to do is start using Fli.
 - https://s3-eu-west-1.amazonaws.com/clusterhq/flockerhub-client/ova/fli-ubuntu1604.ova

2. (960MB) OVA without a pre-configured ZPOOL, you will need to create disk with `fallocate` and a zpool with `zpool create` after login
 - https://s3-eu-west-1.amazonaws.com/clusterhq/flockerhub-client/ova/fli-ubuntu1604-no-zpool.ova

> Note, because of the size of the `.ova` files, downloads may take over 10 minutes depending on your internet connectivity.

Click on the link above, or use something like `curl` or `wget`.
```
wget <OVA-URL>
```

Once the `.ova` is downloaded:

1. Double click the `.ova` file.
2. Click the "Reinitialize MAC addresses" checkbox in VirtualBox.
3. Click "Import".
4. Double click the VM in VirtualBox once imported to start it.
5. Once started, login with `fli/fli` as the `username/password`

> Note: if you use the `.ova` file _without the pre-configured ZPOOL_ you must creat one. You can do this by running the following. `fallocate -l 2G $HOME/zfs.disk && zpool create -f chq $HOME/zfs.disk` BEFORE using `fli setup -z chq`

You can also follow this video which walks through the above steps.

[![FliOvaWalkthrough](https://img.youtube.com/vi/W_haxK6C-nc/0.jpg)](https://www.youtube.com/watch?v=W_haxK6C-nc)

#### Use Fli

Setup Fli
```
sudo su
docker pull clusterhq/fli #make sure fli is up to date.
fli setup -z chq
sudo vi /root/token.txt
fli config -t /root/token.txt
```

Use Fli
```
fli init My-VolumeSet
fli create My-VolumeSet My-Volume
fli sync My-VolumeSet
fli fetch <EXISTING-VOLUMESET>
```


### Other OVA/OVF support hypervisors

The `.ova` is a OVA 1.0 `.ova` with a `vmdk`. We haveni't tried the `.ova` on other platforms with OVA support yet, so please let us know. This `.ova` may work with VMWare, XenServer, Amazon ECS and others, so please let us know if we havent tried it yet.

### Known Issues / Errors

- If you issue the command `fli setup -z chq` and Docker outputs an error along the line of:

> `Driver aufs failed to remove root filesytem ... aufs: unmount error after retried... device or resource busy` 

Restarting the docker daemon with `systemctl restart docker` should make the problem go away.
