FROM quay.io/redsift/buildos-ubuntu
MAINTAINER Deepak Prabhakara email: deepak@redsift.io version: 1.1.101

RUN apt-get update && \
    apt-get install libssl-dev && \
    git clone git@github.com:aerospike/act.git && \
    cd act && \
    make && \
    make -f Makesalt && \
    cp act actprep /usr/local/bin/