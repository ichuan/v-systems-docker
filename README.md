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

## Persist data

By using [CWSpear/local-persist](https://github.com/CWSpear/local-persist):

```
curl -fsSL https://raw.githubusercontent.com/CWSpear/local-persist/master/scripts/install.sh | sudo bash
docker volume create -d local-persist -o mountpoint=/data/vsys-data --name=vsys-data
```

# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/vsystems/>:

```bash
docker run --rm -itd --name ivsys -p 9922:9922 -v vsys-data:/opt/coin/data mixhq/vsystems
```
