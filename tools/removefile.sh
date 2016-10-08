#!/bin/bash

workpath=`pwd`
echo "work path : "${workpath}
#for i in $*;
#do
  #echo "p"
#  echo $i
  #echo "==p"
  #listFiles $i
#done
#echo "=========="

function listFiles(){
  echo "list files : $1"
  findpatten="*.$1"
  if [ $1"_" = "all_" ]
  then
    findpatten="*"
  fi
  for file in `find . -name "${findpatten}"`
  do
    if [ -f ${file} ]
    then
      echo ${file}
    fi
  done
}

function deleteFileByName(){
  echo "list files : $1"
  findpatten="*.$1"
  if [ $1"_" = "all_" ]
  then
    findpatten="*"
  fi
  for file in `find . -name "${findpatten}"`
  do
    if [ -f ${file} ]
    then
      rm ${file}
    fi
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
    deleteFileByName $i
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
