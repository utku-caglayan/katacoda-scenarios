Wait until you see the message "# hzc installed!" on the terminals.

After that you can,
click the image below to start a member on Host-2 terminal

`docker network create hazelcast-network
docker pull hazelcast/hazelcast
docker run \
-it \
--network hazelcast-network \
--rm \
-p 5701:5701 hazelcast/hazelcast`{{execute HOST2}}


This operation will take some time. Please be patient and wait until you see the member logs.

When member instantiation is finished, continue to next step.