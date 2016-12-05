# Getting Started with Fli using Docker Toolbox.

## Pre-requisites

Install Docker Toolbox 
 - https://www.docker.com/products/docker-toolbox

## Start Fli

You can use 2 different options run the install, either one will work, the 1st being the fastest, while the second will pull the code locally to your laptop if your interested in editing or contributing. 

1.
```
curl -sSL https://runfli.clusterhq.com/startfli | sh
```

or

2.
```
git clone https://github.com/ClusterHQ/examples
cd examples/fli-docker-toolbox
sh startfli.sh
```

## Configure Fli

```
docker-machine ssh fli-vm
source ~/.bashrc
fli setup -z chq
sudo vi /root/token.txt
fli config -t /root/token.txt
```

## Use Fli

```
fli init MyVolumeSet
fli create MyVolumeSet MyVolume
fli sync MyVolumeSet
fli fetch <EXISTING-VOLUMESET>
```

## Cleanup

```
curl -sSL https://runfli.clusterhq.com/cleanup | sh
```

or

```
sh cleanup.sh
```

## Video Walkthrough
[![RunFliWalkthrough](https://img.youtube.com/vi/PmV5okBfKW0/0.jpg)](https://www.youtube.com/watch?v=PmV5okBfKW0)
