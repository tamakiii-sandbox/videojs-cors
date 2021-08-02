.PHONY: help setup clean

PORT_NGINX := 8000

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	.env

.env:
	echo "PORT_NGINX=$(PORT_NGINX)" > $@

clean:
	rm -f .env
