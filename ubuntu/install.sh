#!/bin/bash

###################

if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update && sudo apt-get install software-properties-common ansible unzip git -y
else
    echo "Ansible already installed"
fi

echo "git clone https://github.com/Gustavmk/ansible-workstation-ubuntu.git"
echo "ansible-playbook ansible-workstation-ubuntu/ubuntu.yml --ask-become-pass"

