docker images (Debian, Ubuntu, Java, etc.)
==========================================

Usage (Ubuntu Oracle Java 8)
----------------------------

CREDIT: based on the image from tutum/ubuntu

To start the image from docker hub:

```
  $ (sudo) docker run -rm -it petervandenabeele/ubuntu-java8 /bin/bash
```

To build the image `mine/ubuntu-java8` from this file,
execute the following command in the ubuntu-java8 folder:

```
  $ git clone git@github.com:petervandenabeele/docker-images.git
  $ cd docker-images
  $ cd ubuntu-java8
  $ sudo docker build -t mine/ubuntu-java8 .
```

As explained in https://registry.hub.docker.com/u/tutum/ubuntu/ you can use
several methods to set-up an ssh connection to the container. 

```
  $ sudo docker run -d -p 0.0.0.0:2222:22 --name java8-1 -v /home/ubuntu/data-java8-1:/data petervandenabeele/ubuntu-java8
  $ sudo docker logs java8-1
  $ ssh root@localhost -p 2222
    ==> password from the logs

root@2a21d68d6372:~# java -version
java version "1.8.0_40"
Java(TM) SE Runtime Environment (build 1.8.0_40-b25)
Java HotSpot(TM) 64-Bit Server VM (build 25.40-b25, mixed mode)
root@2a21d68d6372:~# cd /data/
root@2a21d68d6372:/data# l
root@2a21d68d6372:/data# touch foo
```

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

The repo is available on [Docker hub](https://registry.hub.docker.com/u/petervandenabeele/debian-jessie/)

Usage (Debian Oracle Java 8)
----------------------------

To start the image from docker hub:

```
  $ (sudo) docker run -rm -it petervandenabeele/debian-java8 /bin/bash
```

To build the image `mine/debian-java8` from this file,
execute the following command in the debian-java8 folder:

```
  $ git clone git@github.com:petervandenabeele/docker-images.git
  $ cd docker-images
  $ cd debian-java8
  $ sudo docker build -t mine/debian-java8 .
  $ sudo docker run -it mine/debian-java8 /bin/bash
```

NOTE: The Oracle Java 8 image is NOT distributed in the image for licensing
reasons. you can download it with these commands:

```
  $ (sudo )docker run -it petervandenabeele/debian-java8 /bin/bash
  # root@93b824664370:/# . download-java.sh
  ...
  The following NEW packages will be installed:
    binutils java-common locales oracle-java8-installer
  ...
  Oracle JDK 8 installed
  ...
  java version is :
  java version "1.8.0_31"
  Java(TM) SE Runtime Environment (build 1.8.0_31-b13)
  Java HotSpot(TM) 64-Bit Server VM (build 25.31-b07, mixed mode)
```
The repo is available on [Docker hub](https://registry.hub.docker.com/u/petervandenabeele/debian-java8/)
