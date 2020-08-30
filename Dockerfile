ARG PYTHON_VERSION=3.8

FROM python:$PYTHON_VERSION-slim-buster

ARG SELENIUM=4.0.0a6.post2
ARG APT_EXTRAS=make
ARG PYTHON_EXTRAS=

RUN if [ "x${APT_EXTRAS}" != x ]]; then apt-get update -qq; apt-get install $APT_EXTRAS; fi
RUN pip install selenium==${SELENIUM} lxml==4.5.1 xmldiff==2.4 $PYTHON_EXTRAS

CMD bash
