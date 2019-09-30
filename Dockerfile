FROM jupyter/datascience-notebook:1386e20468331
LABEL maintainer="seb@lewagon.org"

ENV LANG en_US.utf8
RUN conda install pytest

ENV FULLSTACK_FOLDER /data-challenges
WORKDIR $FULLSTACK_FOLDER
