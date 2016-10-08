#!/bin/bash


function help(){
  echo "usage:"
  echo "marmot rename addpre dotname prename :  add prefix name for all file with dot"
}

function addPrefix(){
  for var in *.${$1}; do mv "$var" "${$2}${%var.${$1}}.{$1}}"; done
}

function addPostName(){
  for var in *.${$1}; do mv "$var" "${var%.${$1}}${$2}.{$1}}"; done
}

function replaceExt(){

}

if [ $# < 3 ]
then
  help
  exit 0
fi

case $1 in
  addpre)
    shift;
    addPrefix $*
    ;;
  addpost)
    shift;
    addPostName $*
    ;;
  *)
    help
    ;;
esac
