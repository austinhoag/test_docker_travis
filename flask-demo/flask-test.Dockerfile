FROM python:3.7-slim-buster

RUN apt-get update; apt-get install curl -y

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

# Run the tests
ENV FLASK_MODE=TEST
# CMD pytest -p no:cacheprovider --cov=flask-demo/tests -vs flask-demo/tests 
