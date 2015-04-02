FROM dockerfile/nodejs

MAINTAINER Giacomo Triggiano <giacomo@creativecoding.it>

RUN adduser --disabled-password --gecos "Sinopia NPM mirror" sinopia

RUN mkdir -p /data/sinopia/storage

RUN chown -R sinopia:sinopia /data/sinopia

USER sinopia

VOLUME /data

CMD ["/bin/bash"]
