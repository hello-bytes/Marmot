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
    #echo "p"
    #echo $i"--"
    #echo "==p"
    listFiles $i
  done

}

function deleteFiles(){
  for i in $*;
  do
    echo $i
  done
}

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
