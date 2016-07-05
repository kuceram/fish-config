set -g -x fish_greeting ''

set PATH $PATH (find ~/.sdkman/*/current/bin -maxdepth 0)
set PATH $PATH /usr/local/mysql/bin/

# Java Home
set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home"
