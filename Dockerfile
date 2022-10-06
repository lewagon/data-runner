FROM python:3.10.6-slim-buster

# data-solutions gha works without this, but the glovebox code validation fails
RUN apt-get update && apt-get install -y --no-install-recommends make curl

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /workspace
