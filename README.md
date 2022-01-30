# eid_slovensko.sk

Docker image pre beh aplikacii potrebnych pre prihlasenie sa na www.slovensko.sk bez potreby spustat statne aplikacie na svojom OS.
Na spustenie by malo stacit:

```
xhost +SI:localuser:root
git clone https://github.com/lmolent/eid_slovensko.sk.git
cd eid_slovensko.sk
docker-compose up
```
alebo
```
pip3 install podman-compose
podman-compose up
```

