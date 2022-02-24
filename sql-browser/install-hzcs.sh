#!/bin/bash
docker network create hazelcast-network
docker pull hazelcast/hazelcast:5.1.1-SNAPSHOT
docker run -d --network hazelcast-network -p 5701:5701 hazelcast/hazelcast
echo "Installing HZC"
mkdir .local
cd local
git clone https://github.com/utku-caglayan/hzcSQLBrowser.git
cd hzcSQLBrowser
git checkout termdbms-components
go build -o browser
cd ..
git clone https://github.com/yuce/go-client-sql-sample.git
cd go-client-sql-sample
go build -o sqlrun
./sqlrun -c "hz://" -f ../games_mapping.sql
./sqlrun -c "hz://" -f ../games_insert.sql
echo "alias browser='\$HOME/hzcSQLBrowser/browser'" >> ~/.bashrc
source ~/.bashrc
clear
echo "hzc installed!"