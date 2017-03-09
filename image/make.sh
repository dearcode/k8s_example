#!/bin/bash
set -v off
date=`date +%H%M`
sed 's/VERSION/'$date'/' src.go > new.go
CGO_ENABLED=0 go build -a -o hello new.go
docker build . -t 192.168.212.19/vitesss/hello:$date
rm new.go hello
#docker push 192.168.212.19/vitesss/hello:$date


