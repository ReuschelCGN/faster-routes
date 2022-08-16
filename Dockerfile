# Basic Docker image for faster-routes

FROM python:3.7-slim

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update \
&& apt-get install -y --no-install-recommends
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN python3 -m pip install PyMySQL
RUN pip install geopy
ENV PYTHONUNBUFFERED 1
COPY . /usr/src/app/
