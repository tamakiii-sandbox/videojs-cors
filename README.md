# videojs-cors

## How to use
```sh
make setup
make -C cdn.example.com build
sudo vim /etc/hosts
make check
docker-compose up
open 'https://example.com/'
```

## Check
```sh
curl -kLH 'Host: example.com' localhost
curl -kLH 'Host: cdn.example.com' localhost
```
