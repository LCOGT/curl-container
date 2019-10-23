# curl-container

An Alpine-based container with curl and jq. Can be used in Kubernetes init
containers to check an HTTP endpoint.

# Usage
```
docker run docker.lco.global/curl-container:image-tag /usr/bin/curl http://some-host
```
