FROM ubuntu:latest

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential curl vim ruby \
    python

RUN chmod 755 /usr/local/bin/entrypoint.sh
RUN ln -s /root/.bashrc /.bashrc
