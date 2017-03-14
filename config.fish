set -g -x fish_greeting ''

set PATH $PATH (find ~/.sdkman/*/current/bin -maxdepth 0)
set PATH $PATH /usr/local/mysql/bin/
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths
