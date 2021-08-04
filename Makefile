.PHONY: help setup check clean

PORT_NGINX := 8000

help:
	@cat $(firstword $(MAKEFILE_LIST))

check:
	egrep '127.0.0.1\s+example.com' /etc/hosts > /dev/null
	egrep '127.0.0.1\s+cdn.example.com' /etc/hosts > /dev/null

setup: \
	.env

.env:
	echo "PORT_NGINX=$(PORT_NGINX)" > $@

clean:
	rm -f .env
