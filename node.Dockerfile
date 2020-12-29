FROM ubuntu:18.04

RUN apt update

RUN apt install -y software-properties-common openssh-server

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update

RUN apt install -y python3.8

RUN useradd --create-home --shell /bin/bash ansible

RUN echo 'ansible:pass123' | chpasswd

RUN mkdir /home/ansible/.ssh

RUN adduser ansible sudo

ENTRYPOINT service ssh restart && bash
