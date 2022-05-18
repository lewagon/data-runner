FROM python:3.8.12-slim-buster
COPY requirements.txt /requirements.txt
ARG GEMFURY_PULL_TOKEN
RUN pip install --index-url "https://${GEMFURY_PULL_TOKEN}:@pypi.fury.io/ssaunier" wagon_common
RUN pip install -r /requirements.txt

WORKDIR /data-challenges
