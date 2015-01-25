docker images (Debian, Java, etc.)
===================================

Usage (Debian Jessie)
----------------------

To start the image from docker hub:

```
  $ (sudo) docker run -rm -it petervandenabeele/debian-jessie /bin/bash
```

To build the image `mine/debian-jessie` from this file,
execute the following command in the debian-jessie folder:

```
  $ git clone git@github.com:petervandenabeele/docker-images.git
  $ cd docker-images
  $ cd debian-jessie
  $ sudo docker build -t mine/debian-jessie .
  $ sudo docker run --rm -it mine/debian-jessie /bin/bash
```

The repo is available on [Docker
hub](https://registry.hub.docker.com/u/petervandenabeele/debian-jessie/)
