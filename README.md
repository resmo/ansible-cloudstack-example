# CloudStack Example Playbook

## What:
Installs yacy search engine on Exoscale.

## Install
~~~
$ cat $HOME/.cloudstack.ini
[cloudstack]
endpoint = https://api.exoscale.ch/compute
key = cloudstack api key
secret = cloudstack api secret

$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example 
$ virtualenv . && source bin/activate
$ make install
$ ansible-playbook playbooks/cloud.yml
~~~
