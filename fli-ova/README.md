# using Fli from .OVA (Open Virtual Format)

![alt tag](http://i.imgur.com/mByy4H6.jpg)

## Use `.ova` to launch a Fli client node.

### VirutalBox

#### Prerequisites

Install VirtualBox: https://www.virtualbox.org/wiki/Downloads

#### Download `.ova`

1. OVA with a pre-configured ZPOOL named `chq`, all you need to do is start using Fli.
 - https://s3-eu-west-1.amazonaws.com/clusterhq/flockerhub-client/ova/fli-ubuntu1604.ova

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

The .ova file has been tested on VirtualBox only.

It may also work on other hypervisors such as  VMWare, XenServer, Amazon ECS and others. Contact us if you have any problems using the image.

### Known Issues / Errors

- If you issue the command `fli setup -z chq` and Docker outputs an error along the line of:

> `Driver aufs failed to remove root filesytem ... aufs: unmount error after retried... device or resource busy` 

Restarting the docker daemon with `systemctl restart docker` should make the problem go away.
