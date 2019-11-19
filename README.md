# CloudStack Example Playbook

[![Demo Screencast](https://img.youtube.com/vi/cFC0dNvRaf4/1.jpg)](https://www.youtube.com/watch?v=cFC0dNvRaf4)

## What:
Installs yacy search engine on Exoscale.


## Cloud Credentionals
~~~
$ cat $HOME/.cloudstack.ini
[cloudstack]
endpoint = https://api.exoscale.ch/compute
key = cloudstack api key
secret = cloudstack api secret
~~~

## Instal by venv

~~~
$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip install -r requirements.txt
$ ansible-playbook playbooks/site.yml
~~~


## Install by virtualenv
~~~
$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example
$ virtualenv app && source app/bin/activate
$ pip install -r requirements.txt
$ ansible-playbook playbooks/site.yml
~~~

## Install and run with Docker
~~~
$ git clone https://github.com/resmo/ansible-cloudstack-example.git
$ cd ansible-cloudstack-example
$ make build
$ make run

# Cleanup
$ make clean
~~~
