FROM python:3.8.6-slim-buster
RUN apt-get update && apt-get install -y --no-install-recommends make
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
