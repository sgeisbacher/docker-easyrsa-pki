# docker-easyrsa-pki
this project makes it easier (especially for mac-users) to manage your own pki/ca
## usage
before you first run you should first download `vars`-file and configure it to fit your environment
```sh
wget -O vars https://raw.githubusercontent.com/sgeisbacher/docker-easyrsa-pki/master/vars.orig
```

then you can start a container and on the first run (only when `keys/ca.key` does not exist) it will start `./build-ca`. afterwards and on every further start you will be located in `easyrsa`'s work-dir and you can just start off building new server- and client-keys 
```sh
docker run -v `pwd`/vars:/ca/vars -v `pwd`/keys:/ca/keys -ti sgeisbacher/easyrsa-pki
```

