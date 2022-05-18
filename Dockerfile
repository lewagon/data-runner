FROM python:3.8.12-slim-buster
COPY requirements.txt /requirements.txt
ARG GEMFURY_PULL_TOKEN
RUN pip install -r /requirements.txt --extra-index-url "https://$GEMFURY_PULL_TOKEN@pypi.fury.io/ssaunier"

WORKDIR /data-challenges
