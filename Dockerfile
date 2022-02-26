FROM python:3.8.6-slim-buster
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /data-challenges
