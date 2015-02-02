echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends oracle-java8-installer \
&& DEBIAN_FRONTEND=noninteractive apt-get install oracle-java8-set-default \
&& DEBIAN_FRONTEND=noninteractive apt-get clean \
&& echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/environment \
&& echo "java version is :" \
&& java -version
