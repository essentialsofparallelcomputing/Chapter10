#!/bin/sh
docker build --no-cache -t chapter10 .
#docker run -it --entrypoint /bin/bash chapter10
docker build --no-cache -f Dockerfile.Ubuntu20.04 -t chapter10 .
#docker run -it --entrypoint /bin/bash chapter10
docker build --no-cache -f Dockerfile.debian -t chapter10 .
#docker run -it --entrypoint /bin/bash chapter10
