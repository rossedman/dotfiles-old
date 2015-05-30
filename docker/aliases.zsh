$(boot2docker shellinit 2> /dev/null)

alias dockstop='docker stop $(docker ps -a -q)'
alias dockrma='docker rm $(docker ps -a -q)'
alias dockrmi='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
alias dockip='boot2docker ip 2> /dev/null'
