# Oh, hai!

This Docker image build file is based on the official latest [Redis](https://registry.hub.docker.com/_/redis/) image

This Docker image does not start a regular Redis instance, but instead starts a Redis Sentinel instance with the default configuration file and the default port 26379 exposed.

*Important*: Ports, Sentinel announce-ip and the Sentinel announce-port parameters should be set at launch for Sentinel to work in a container environment.

An example on how to launch Sentinel, exposing the host machine IP address (assuming it's on eth0) and the default Sentinel port:

```
docker run --name sentinel -d -p 26379:26379 crazyfacka/redis-sentinel --sentinel announce-ip `ifconfig eth0 | awk '/inet addr/{print substr($2,6)}'` --sentinel announce-port 26379
```
