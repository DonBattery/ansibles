FROM ubuntu:18.04

RUN apt update

RUN apt install -y software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update

RUN apt install -y openssh-client sshpass python3.8 python3-pip

RUN pip3 install ansible
