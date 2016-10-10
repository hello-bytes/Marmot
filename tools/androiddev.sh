#!/bin/bash

function help(){
  echo "usage:"
  echo "marmot androiddev create gitignore:create a .gitingore file to local"
}

function create(){
  if [ $1"_" = "gitignore_" ]
  then
    url="https://raw.githubusercontent.com/shishengyi/gitignore/master/Android.gitignore"
    echo "check url : ${url}"
    httpCode=`curl -o /dev/null -s -w %{http_code} ${url}`
    if [ ${httpCode}"_" = "200_" ]
    then
      curl ${url} > ".gitignore"
    else
      echo "error, the http status is ${httpCode}"
    fi
  fi
}

case $1 in
  create)
    shift;
    create $*
    ;;
  *)
    help
    ;;
esac
