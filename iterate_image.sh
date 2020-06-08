#!/bin/bash
# set -x
image_tag=$1 
port=$2

if [ $# != '2' ]; then
  echo 'Purpose: build and run image'
  echo 'iterate_image.sh IMAGE_TAG PORT'
  exit 1
fi

docker build -t  .
docker run -p $port:$port-e FASK_APP='app.py' -it $image_tag
