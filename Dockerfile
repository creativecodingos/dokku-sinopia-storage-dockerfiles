FROM dockerfile/nodejs

MAINTAINER Giacomo Triggiano <giacomo@creativecoding.it>

RUN \
  apt-get update && \
  apt-get install -y apache2-utils && \
  adduser --disabled-password --gecos "Sinopia NPM mirror" sinopia && \
  mkdir -p /data/sinopia/storage

ADD /config.yaml /data/sinopia/config.yaml

RUN chown -R sinopia:sinopia /data

USER sinopia

VOLUME /data

CMD ["/bin/bash"]
