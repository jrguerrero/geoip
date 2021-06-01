# GeoIP
GeoIPlookup application made with Bash, Docker, Docker-Compose and Chef cookbook.

## How to deploy

### Bash

Built as a simple script to launch with a parameter.

Example:
```sh
./files/geoip.sh [URL]
```

### Docker + docker-entrypoint.sh

Steps:
01: We have to build the container with the Dockerfile attached.
```sh
docker build --tag geoip .
```
02: Insert all DNS names on the file dnsnames.txt
03: Launch the container.
```sh
docker run \                    
    --name geoip \
    -v $PWD/files/dnsnames.txt:/tmp/dnsnames.txt \
    -v $PWD/files/dnslocation.txt:/tmp/dnslocation.txt \
    -d geoip
```
04: See the results on the dnslocation.txt file.


### Docker-Compose

Same as before, but just launching the docker-compose command.

```sh
docker-compose up
```

### Chef cookbook

Cookbook created to launch the app created before.

```sh
chef-solo -c solo.rb -j geoip.json
```
