FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
    git \
    python2.7 \
    python-pip \
 && rm -rf /var/lib/apt/lists/*

RUN pip install flask requests gevent
RUN git clone https://github.com/jkaberg/tvhProxy /tvhProxy

ENTRYPOINT python /tvhProxy/tvhProxy.py
