FROM python:3.9.6-slim-buster
RUN apt-get update && apt-get install -y --no-install-recommends make
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /data-challenges
