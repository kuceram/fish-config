set -g -x fish_greeting ''

set PATH $PATH /usr/local/mysql/bin/
set PATH $PATH /usr/local/sbin
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths
