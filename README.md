# CloudStack Example Playbook

[![Demo Screencast](https://img.youtube.com/vi/cFC0dNvRaf4/1.jpg)](https://www.youtube.com/watch?v=cFC0dNvRaf4)

## What:
Installs yacy search engine on Exoscale.

## Install and run with Docker
~~~
$ cat $HOME/.cloudstack.ini
[cloudstack]
endpoint = https://api.exoscale.ch/compute
key = cloudstack api key
secret = cloudstack api secret

$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example
$ make build
$ make run
# Cleanup
$ make clean
~~~

## Install by virtualenv
~~~
$ cat $HOME/.cloudstack.ini
[cloudstack]
endpoint = https://api.exoscale.ch/compute
key = cloudstack api key
secret = cloudstack api secret

$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example
$ virtualenv app && source app/bin/activate
$ pip install -r requirements.txt
$ ansible-playbook playbooks/site.yml
~~~
