# videojs-cors

## How to use
```sh
make setup
docker-compose up
make -C cdn.example.com build
sudo vim /etc/hosts
make check
# TODO: https-portal
open 'http://example.com:8000/'
```

## Check
```sh
curl -H 'Host: example.com' localhost:8000
curl -H 'Host: cdn.example.com' localhost:8000
```
