
# Pull base image.
FROM buildpack-deps:bionic

RUN apt-get update \
 && apt-get install -y sudo
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

COPY install.sh .
RUN bash ./install.sh

USER root
WORKDIR /neck-identification
COPY . .
RUN bash /neck-identification/build.sh
