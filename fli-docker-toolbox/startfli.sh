#!/bin/bash

docker-machine --help > /dev/null

if [ $? -eq 0 ]
then
  echo "Docker Machine Ready..."
else
  echo "Could not find Docker Machine" >&2
  exit 1
fi

docker-machine create -d virtualbox --virtualbox-boot2docker-url https://s3-eu-west-1.amazonaws.com/clusterhq/flockerhub-client/boot2dockerisos/fliclientos.iso fli-vm && \
(echo "y" | docker-machine ssh fli-vm "sudo ros console switch ubuntu") || true && \
sleep 3 && docker-machine ssh fli-vm "sudo ros service enable kernel-headers" && \
docker-machine ssh fli-vm "sudo ros service up -d kernel-headers" && \
docker-machine ssh fli-vm "sudo apt update --yes -qq" && \
docker-machine ssh fli-vm "sudo apt install --yes -qq zfs" && \
docker-machine ssh fli-vm "sudo ros config set rancher.modules [zfs]" && \
docker-machine ssh fli-vm "sudo ros config set runcmd \"[[sh, -c, '[ -f /etc/zfs/zpool.cache ] && zpool import -c /etc/zfs/zpool.cache -a']]\"" && \
docker-machine ssh fli-vm "sudo modprobe zfs" && \
docker-machine ssh fli-vm "sudo zpool list" && \
docker-machine ssh fli-vm "sudo fallocate -l 5G /home/docker/zfs.disk" && \
docker-machine ssh fli-vm "sudo zpool create -f chq /home/docker/zfs.disk" && \
docker-machine ssh fli-vm "sudo echo \"alias fli='sudo docker run --rm --privileged -v /chq/:/chq/:shared -v /var/log/fli:/var/log/fli -v /root:/root -v /lib/modules:/lib/modules clusterhq/fli'\" >> /home/docker/.bashrc" && \
docker-machine ssh fli-vm "docker run clusterhq/fli --help" && \
echo "" && \
echo "******************************************************************************************************************************" && \
echo "Now run 'docker-machine ssh fli-vm' and start using Fli. Type 'source ~/.bashrc' then use Fli! Type 'fli --help' to verify" && \
echo "******************************************************************************************************************************" && \
echo ""
