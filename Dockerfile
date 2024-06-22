ARG PYTHON_VERSION=3.12

FROM python:$PYTHON_VERSION-slim

ARG SELENIUM=4.22.0
ARG APT_EXTRAS=make
ARG PYTHON_EXTRAS=

RUN if [ "x${APT_EXTRAS}" != x ]]; then apt-get update -qq; apt-get install $APT_EXTRAS; fi
RUN pip install selenium==${SELENIUM} lxml xmldiff pytest $PYTHON_EXTRAS

CMD bash
