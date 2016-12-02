#!/bin/bash

docker-machine --help > /dev/null

if [ $? -eq 0 ]
then
  echo "Docker Machine Ready..."
else
  echo "Could not find Docker Machine" >&2
  exit 1
fi

docker-machine rm -f fli-vm
