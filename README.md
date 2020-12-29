# ansibles

Ansible boilerplate and tricks

## Setup

Build and run the ansible-control and the two ansible-node containers  
`docker-compose up`

Exec into the ansible-control container  
`docker exec -it <container_id> bash`

Change the directory to /app  
`cd /app`

Prepare the ansible-control container with  
`ansible-playbook prepare-control.yml`

Run test playbook on ansible-nodes  
`ansible-playbook -i inventory.yml remote-test.yml`

Run webserver playbook on remote-nodes  
`ansible-playbook -i inventory.yml remote-playbook.yml`
