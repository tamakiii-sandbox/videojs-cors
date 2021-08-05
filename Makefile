.PHONY: help setup check clean

PORT_HTTP := 80
PORT_HTTPS := 443

help:
	@cat $(firstword $(MAKEFILE_LIST))

check:
	egrep '127.0.0.1\s+example.com' /etc/hosts > /dev/null
	egrep '127.0.0.1\s+cdn.example.com' /etc/hosts > /dev/null

setup: \
	.env

.env:
	echo "PORT_HTTP=$(PORT_HTTP)" > $@
	echo "PORT_HTTPS=$(PORT_HTTPS)" >> $@

clean:
	rm -f .env
