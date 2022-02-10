Click this to start a member on Host-2 terminal
`docker network create hazelcast-network
docker pull hazelcast/hazelcast
docker run \
-it \
--network hazelcast-network \
--rm \
-p 5701:5701 hazelcast/hazelcast`{{execute HOST2}}

When member instantiation is finished, continue to next step.