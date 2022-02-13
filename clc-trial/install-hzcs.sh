#!/bin/bash
docker network create hazelcast-network
docker pull hazelcast/hazelcast
docker run -d\
-it \
--network hazelcast-network \
--rm \
-p 5701:5701 hazelcast/hazelcast &
echo "Installing HZC"
mkdir .local
cd local
git clone https://github.com/utku-caglayan/hazelcast-commandline-client.git
cd hazelcast-commandline-client
git checkout persist-opt-1
go build -o hzc1
git checkout persist-opt-2
go build -o hzc2
git checkout persist-opt-3
go build -o hzc3
cd ..
echo "alias hzc1='\$HOME/hazelcast-commandline-client/hzc1" >> ~/.bashrc
echo "alias hzc2='\$HOME/hazelcast-commandline-client/hzc2" >> ~/.bashrc
echo "alias hzc3='\$HOME/hazelcast-commandline-client/hzc3" >> ~/.bashrc
source ~/.bashrc
clear
echo "hzc installed!"