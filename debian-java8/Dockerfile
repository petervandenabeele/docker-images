# Oracle Java 8 on Debian Jessie

FROM petervandenabeele/debian-jessie
MAINTAINER Peter Vandenabeele <peter@vandenabeele.com>

RUN    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/oracle-java8.list \
    && echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/oracle-java8.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

ADD  download-java.sh download-java.sh

RUN    echo "Run the command `# . download-java.sh` to download Oracle Java"
