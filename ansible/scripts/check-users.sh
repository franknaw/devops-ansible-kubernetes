#!/usr/bin/env bash

ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook ~/A2T/dev/devops-ansible-kubernetes/ansible/playbooks/check-users.yml --ask-vault-password --extra-vars '@passwd.yml'


