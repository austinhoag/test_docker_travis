FROM python:3.7-slim-buster

RUN apt-get update; apt-get install curl -y

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app