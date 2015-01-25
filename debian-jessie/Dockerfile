# Debian Jessie with apt-get upgrade and tools

FROM debian:jessie
MAINTAINER Peter Vandenabeele <peter@vandenabeele.com>

RUN    apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install apt-utils -y \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

RUN    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       bash-completion \
       curl \
       git \
       ssh \
       vim \
       wget

# activate bash completion
# some shortcuts
RUN    echo 'if [ -f /etc/bash_completion ]; then' >> ~/.bashrc \
    && echo '  . /etc/bash_completion' >> ~/.bashrc \
    && echo 'fi' >> ~/.bashrc \
    && echo "alias l='ls -l'" >> ~/.bashrc \
    && echo 'if [ -f /etc/bash_completion ]; then' >> /etc/bash.bashrc \
    && echo '  . /etc/bash_completion' >> /etc/bash.bashrc \
    && echo 'fi' >> /etc/bash.bashrc \
    && echo "alias l='ls -l'" >> ~/bash.bashrc
