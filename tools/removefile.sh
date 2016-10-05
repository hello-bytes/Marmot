#!/bin/bash

function listFiles(){
  echo "list files : $1"

  findpatten="*.$1"
  if [ $1"_" = "all_" ]
  then
    findpatten="*"
  fi
  for file in `find . -name "${findpatten}"`
  do
    echo ${file}
  done
}

function printFiles(){
  for i in $*;
  do
    listFiles $i
  done
}

function deleteFiles(){
  for i in $*;
  do
    echo $i
  done
}

function help(){
  echo "I can print and delete file by ext recursion，please call me like this:"
  echo "marmot removefile print <extension name>"
  echo "marmot removefile delete <extension name>"
  echo "all means all the file"
  echo "e.g : marmot removefile print all will print all the file(except folder)"
}

if [ $# = 0 ]
then
  help
  exit 0
fi

case $1 in
  print)
    shift;
    printFiles $*;
    ;;
  delete)
    shift;
    deleteFiles $*
    ;;
  *)
    echo "please input===== install ***"
    ;;
esac


#pcount=$#
#for ((i=1; i < pcount; i++));do
#  let result=i+1
#  var=${!result}
#  echo $var
#done
