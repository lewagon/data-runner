FROM jupyter/datascience-notebook:latest
LABEL maintainer="seb@lewagon.org"

ENV LANG en_US.utf8
RUN conda install pytest

ENV FULLSTACK_FOLDER /data-challenges
WORKDIR $FULLSTACK_FOLDER
