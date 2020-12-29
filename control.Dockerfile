FROM ubuntu:18.04

WORKDIR /app

RUN apt update

RUN apt install -y software-properties-common openssh-client sshpass

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update

RUN apt install -y  python3.8 python3-pip

RUN pip3 install ansible
