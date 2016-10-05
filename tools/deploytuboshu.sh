#!/bin/bash

echo "cd the the blog dir:/root/LaravelBlog"
cd /mnt/gdisk/svn/marmot/www

echo "get code from svn"
svn update

echo "cp all files to /var/www/marmot"
cp -r ./* /var/www/marmot/
