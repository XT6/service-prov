#!/bin/sh

# ansible-playbook -i hosts site.yml --ask-sudo
#ansible-playbook site.yml --tags "obs-admin,obs-hosts" --ask-sudo
# ansible-playbook site.yml -k --ask-sudo  $1 $2 $3

eval $(ssh-agent)
ssh-add $HOME/Workspaces/LACNIC-Wksp/22-Keys-Certs/carlosm-lacnic-rsa
ansible-playbook site.yml  --ask-sudo  $1 $2 $3
ssh-agent -k
