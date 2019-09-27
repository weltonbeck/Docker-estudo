#!/bin/bash

# -----------------------
# The amazing docker tool
# -----------------------

REF="npm start"

# start
if [ "$1" == 'start' ]
  then
    if [ "$2" == 'logs' ]
      then
        docker-compose up web
    else
        docker-compose up -d web
    fi;

# add lib
elif [ "$1" == 'add' ]
  then
    docker exec -it $(docker ps | grep "$REF" | awk '{print $1}') /bin/sh -c "npm i --save $2"
    docker commit $(docker ps | grep "$REF" | awk '{print $1}') $(docker ps | grep "$REF" | awk '{print $2}')

# remove lib
elif [ "$1" == 'remove' ]
  then
    docker exec -it $(docker ps | grep "$REF" | awk '{print $1}') /bin/sh -c "npm r --save $2"

# rebuild
elif [ "$1" == 'rebuild' ]
  then
    if [ "$2" == 'logs' ]
      then
        docker-compose up --build web
    else
        docker-compose up --build -d web
    fi;

# logs
elif [ "$1" == 'logs' ]
  then
    docker-compose logs -f

# test
elif [ "$1" == 'test' ]
  then
    docker exec $(docker ps | grep "$REF" | awk '{print $1}') npm test

# shell
elif [ "$1" == 'shell' ]
  then
    docker exec -it $(docker ps | grep "$REF" | awk '{print $1}') bash

# stop
elif [ "$1" == 'stop' ]
  then
    docker-compose down

# invalid
else
  echo "invalid command"
fi;
