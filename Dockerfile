ARG PY_VER=3.6
FROM python:${PY_VER}

RUN apt-get update
RUN apt-get install -y curl
RUN curl --silent https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz go.tar.gz | tar -C /usr/local -xzf -
ENV PATH=/usr/local/go/bin:$PATH

RUN pip install --upgrade pip
RUN pip install setuptools-golang pytest-runner pytest
