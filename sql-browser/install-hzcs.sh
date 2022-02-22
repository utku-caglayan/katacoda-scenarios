#!/bin/bash
docker network create hazelcast-network
docker pull hazelcast/hazelcast
docker run -d --network hazelcast-network -p 5701:5701 hazelcast/hazelcast
echo "Installing HZC"
mkdir .local
cd local
git clone https://github.com/utku-caglayan/hzcSQLBrowser.git
cd hzcSQLBrowser
go build -o browser
cd ..
echo "alias browser='\$HOME/hzcSQLBrowser/browser'" >> ~/.bashrc
source ~/.bashrc
clear
echo "hzc installed!"