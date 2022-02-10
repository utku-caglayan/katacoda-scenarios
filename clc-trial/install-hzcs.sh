#!/bin/bash
clear
echo "Installing HZC"
mkdir .local
cd local
git clone https://github.com/hazelcast/hazelcast-commandline-client.git
cd hazelcast-commandline-client
git checkout master
go build -o hzc1
git checkout master
go build -o hzc2
git checkout master
go build -o hzc3
echo "alias hzc1='./\$HOME/hazelcast-commandline-client/hzc1" >> ~/.bashrc
echo "alias hzc2='./\$HOME/hazelcast-commandline-client/hzc2" >> ~/.bashrc
echo "alias hzc3='./\$HOME/hazelcast-commandline-client/hzc3" >> ~/.bashrc
source ~/.bashrc