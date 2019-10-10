FROM jupyter/datascience-notebook:latest
LABEL maintainer="seb@lewagon.org"

ENV LANG en_US.utf8
RUN pip install pytest pylint lxml

ENV FULLSTACK_FOLDER /data-challenges
WORKDIR $FULLSTACK_FOLDER
# Handle proper permissions later https://denibertovic.com/posts/handling-permissions-with-docker-volumes/ 🙈
USER root
