run:
	docker run -it --rm --name ansible \
	--volume ~/.ssh:/usr/src/app/.ssh \
	--env LOCAL_USER_ID=$(shell id -u $$USER) \
	--volume $$SSH_AUTH_SOCK:/ssh-agent \
	--env SSH_AUTH_SOCK=/ssh-agent \
	ansible ansible-playbook playbooks/site.yml

build:
	docker build -t ansible .

clean:
	docker run -it --rm --name ansible \
	--volume ~/.ssh:/usr/src/app/.ssh \
	--env LOCAL_USER_ID=$(shell id -u $$USER) \
	--volume $$SSH_AUTH_SOCK:/ssh-agent \
	--env SSH_AUTH_SOCK=/ssh-agent \
	ansible ansible-playbook playbooks/env-down.yml
	docker rmi ansible
