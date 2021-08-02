.PHONY: help setup check clean

PORT_NGINX := 8000

help:
	@cat $(firstword $(MAKEFILE_LIST))

check:
	egrep --color '127.0.0.1\s+example.com' /etc/hosts
	egrep --color '127.0.0.1\s+cdn.example.com' /etc/hosts

setup: \
	.env

.env:
	echo "PORT_NGINX=$(PORT_NGINX)" > $@

clean:
	rm -f .env
