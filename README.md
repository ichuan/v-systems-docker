# v-systems-docker
Dockerfile for v systems


# Building

```bash
docker build -t vsystems .
```

# Running

```bash
# block dir
mkdir data
docker run --rm -itd --name ivsys -p 9922:9922 -v `pwd`/data:/opt/coin/data vsystems
```

# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/vsystems/>:

```bash
docker run --rm -itd --name ivsys -p 9922:9922 -v `pwd`/data:/opt/coin/data mixhq/vsystems
```
