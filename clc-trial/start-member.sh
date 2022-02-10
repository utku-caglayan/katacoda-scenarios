#!/bin/bash
#echo "Installing Hazelcast"
#wget -qO - https://repository.hazelcast.com/api/gpg/key/public | sudo apt-key add -
#echo "deb https://repository.hazelcast.com/debian stable main" | sudo tee -a /etc/apt/sources.list
#sudo apt update && sudo apt install hazelcast -y


#!/bin/bash
echo "Starting Hazelcast"
docker network create hazelcast-network
docker pull hazelcast/hazelcast
docker run \
  -it \
  --network hazelcast-network \
  --rm \
  -p 5701:5701 hazelcast/hazelcast