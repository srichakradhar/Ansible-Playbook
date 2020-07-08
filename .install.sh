#!/bin/bash
sudo apt-get update
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y;


sudo truncate -s 0 /etc/ansible/ansible.cfg
sudo echo "[defaults]" >> /etc/ansible/ansible.cfg; 
sudo echo "inventory = /etc/ansible/hosts" >> /etc/ansible/ansible.cfg ;
sudo echo "log_path = /home/user/ansible.log" >> /etc/ansible/ansible.cfg;
sudo echo "roles_path=/etc/ansible/roles" >> /etc/ansible/ansible.cfg;
sudo echo "[privilege_escalation]" >> /etc/ansible/ansible.cfg;
sudo echo "become_method=sudo" >> /etc/ansible/ansible.cfg;
sudo echo "become_ask_pass=FALSE" >> /etc/ansible/ansible.cfg;

sudo truncate -s 0 /etc/ansible/hosts ;                                              
sudo echo "localhost ansible_connection=local" >> /etc/ansible/hosts; 
