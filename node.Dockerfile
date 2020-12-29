FROM ubuntu:18.04

RUN apt update

RUN apt install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update

RUN apt install -y python3.8

RUN apt install -y openssh-server

# RUN mkdir /var/run/sshd

RUN useradd --create-home --shell /bin/bash ansible

RUN echo 'ansible:pass123' | chpasswd

RUN mkdir /home/ansible/.ssh

RUN adduser ansible sudo

EXPOSE 22

ENTRYPOINT service ssh restart && bash
