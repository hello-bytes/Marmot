#!/bin/bash

workpath=`pwd`
echo "work path : "${workpath}

function listFiles(){
  echo "list files : $1"
  for file in `find . -name "*.$1"`
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

case $1 in
  print)
    shift;
    printFiles $*;
    ;;
  delete)
    shift;
    deleteFiles $*;
    ;;
  *)
    echo "please input install ***"
    ;;
esac




pcount=$#
for ((i=1; i < pcount; i++));do
  let result=i+1
  var=${!result}
  echo $var
done



for file in `find . -name "*.txt"`
do
  echo ${file}
done
