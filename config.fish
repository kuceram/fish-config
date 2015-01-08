set -g -x fish_greeting ''

set PATH $PATH (find ~/.gvm/*/current/bin -maxdepth 0)
set PATH $PATH /usr/local/mysql/bin/

# Docker
set -x DOCKER_CERT_PATH /Users/kuceram/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
set -x DOCKER_HOST tcp://192.168.59.103:2376
