# Getting Started with Fli using Docker Toolbox.

## Pre-requisites

Install Docker Toolbox 
 - https://www.docker.com/products/docker-toolbox

## Start Fli

Run the install

```
sh startfli.sh
```

## Use Fli

```
docker-machine ssh fli-vm
fli setup -z chq
fli config -t /root/<YOUR_TOKEN>
fli init MyVolumeSet
fli create MyVolumeSet MyVolume
```

## Cleanup

```
sh cleanup.sh
Docker Machine Ready...
About to remove fli-vm
Are you sure? (y/n): y
```
