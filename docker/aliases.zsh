$(boot2docker shellinit 2> /dev/null)

alias dip='boot2docker ip 2> /dev/null'
alias dkd="docker run -d -P"
alias dki="docker run -t -i -P"

db() { docker build -t="$1" .; }
drs() { docker stop $(docker ps -a -q);  }
dri() { docker rmi $(docker images | grep "^<none>" | awk "{print $3}"); }
drm() { docker rm $(docker ps -q -a); }
dent() { docker exec -i -t $1 /bin/bash; }

dclean() {
  docker stop $(docker ps -a -q);
  docker rm $(docker ps -q -a);
  docker rmi $(docker images | grep "^<none>" | awk "{print $3}");  
}

dnuke() {
  docker stop $(docker ps -a -q);
  docker rm $(docker ps -q -a);
  docker rmi $(docker images -q);
}
