#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Please input the host name of the server"
    exit 1
fi

echo "Using Host $1"

ansible-playbook ~/A2T/dev/devops-ansible-kubernetes/ansible/playbooks/reset-mongo-data.yml --ask-vault-password --extra-vars '@passwd.yml' -e "theServer=$1"
