#!/bin/bash

echo "cd the the blog dir:/root/LaravelBlog"
cd /root/LaravelBlog

echo "get code from svn"
svn update

echo "cp all files to /var/www/blog"
cp -r ./* /var/www/blog/
