FROM quay.io/redsift/buildos-ubuntu
MAINTAINER Deepak Prabhakara email: deepak@redsift.io version: 1.1.101

RUN apt-get update && \
    apt-get install -y libssl-dev && \
    ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts && \
    git clone git@github.com:aerospike/act.git && \
    cd act && \
    make && \
    make -f Makesalt && \
    cp act actprep act_config_helper.py /usr/local/bin/ && \
    rm -Rf /tmp/*
