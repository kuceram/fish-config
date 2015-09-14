set -g -x fish_greeting ''

set PATH $PATH (find ~/.gvm/*/current/bin -maxdepth 0)
set PATH $PATH /usr/local/mysql/bin/

# Docker
set -x DOCKER_CERT_PATH /Users/matous/.docker/machine/machines/default
set -x DOCKER_TLS_VERIFY 1
set -x DOCKER_MACHINE_NAME default
