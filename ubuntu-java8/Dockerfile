# Oracle Java 8 on Ubuntu

FROM tutum/ubuntu:trusty
MAINTAINER Peter Vandenabeele <peter@vandenabeele.com>

# install oracle java 8u40
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"\
    > /etc/apt/sources.list.d/webupd8team-java.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && apt-get install -y --no-install-recommends \
    bash-completion \
    curl \
    git \
    ssh \
    vim \
    wget

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends oracle-java8-installer=8u40+8u33arm-1~webupd8~0

RUN DEBIAN_FRONTEND=noninteractive apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/oracle-jdk8-installer

# set environment
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
