# using Fli from .OVA (Open Virtual Format)

![alt tag](http://i.imgur.com/mByy4H6.jpg)

## Use `.ova` to lauch a Fli node.

### VirutalBox

Download `.ova` from here
 - https://s3.amazonaws.com/clusterhq/flockerhub-client/ova/fli-ubuntu1604.ova

1. Double Click `.ova` file
2. Click the "Reinitialize MAC addresses" checkbox
3. Click "Import"
4. Double click the VM in VirtualBox once imported.
5. Once started, login with `fli/fli` as the `username/password`

You can also follow this video which walks through the above steps.

[![FliOvaWalkthrough](https://img.youtube.com/vi/W_haxK6C-nc/0.jpg)](https://www.youtube.com/watch?v=W_haxK6C-nc)

#### Use Fli

Setup Fli
```
sudo su
fli setup -z chq
sudo vi /root/token.txt
fli config -t /root/token.txt
```

Use Fli
```
fli init MyVolumeSet
fli create MyVolumeSet MyVolume
fli sync MyVolumeSet
fli fetch <EXISTING-VOLUMESET>
```


### Other OVA/OVF support hypervisors

The `.ova` is a OVA 1.0 `.ova` with a `vmdk`. We havent tried the `.ova` on other platforms withs OVA support yet, so please let us know. This `.ova` may work with VMWare, XenServer, Amazon ECS and others, so please let us know if we havent tried it yet.


