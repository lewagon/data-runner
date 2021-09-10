FROM python:3.8.12-slim-buster
RUN apt-get update && apt-get install -y --no-install-recommends make curl
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /data-challenges
