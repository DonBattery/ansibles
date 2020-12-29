# ansibles

**Ansible boilerplate and tricks**  

This repository demonstrates the working mechanism of Ansible. It contains two Dockerfiles: control.Dockerfile to build the Ansible control container (with Python3, ssh-client and Ansible installed) and node.Dockerfile to build the node containers (with an 'ansible' sudo user, ssh-server and Python3 installed). It has a docker-compose.yml file which builds 3 services: the Ansible control and two nodes. After a successful docker-compose up you may exec into the control container and execute an Ansible playbook locally, which prepares the container for accessing the nodes via ssh. Then you can run two different playbooks against the nodes: one that just prints out their inventory-name (proving that Ansible can reach these hosts), and another which deploys a simple http web service on them.  

## Usage

Build and run the ansible-control and the two ansible-node containers  
`docker-compose up --build`  

Exec into the ansible-control container  
`docker exec -it <container_id> bash`  

Prepare the ansible-control container with  
`ansible-playbook prepare-control.yml`  

Run test playbook on ansible-nodes  
`ansible-playbook -i inventory.yml remote-test.yml`  

Run webserver playbook on remote-nodes  
`ansible-playbook -i inventory.yml remote-playbook.yml`  
