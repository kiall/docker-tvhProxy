FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
    git \
    python2.7 \
    python-flask \
    python-requests \
    python-gevent \
 && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/jkaberg/tvhProxy /tvhProxy

ENTRYPOINT python /tvhProxy/tvhProxy.py
