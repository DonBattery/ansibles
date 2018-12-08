# ansibles

Ansible boilerplate and tricks

## Setup

I have created 2 Docker containers
- my-ansible
- my-node

Both from Ubuntu image. I have installed **python** and **ansible** on my-ansible, **python** and **openssh** on my-node. Also I have created an user named ansible on my-node with sudo rights.

## Usage

In the my-ansible container

Run playbook locally
```BASH
ansible-playbook local-playbook.yml
``` 

Run playbook remotely
```BASH
ansible-playbook -i hosts/remote-hosts.yml remote-playbook.yml
``` 
