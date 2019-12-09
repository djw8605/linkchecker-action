#!/bin/sh -x

site_dir=$1

# Start the nginx server
cp -r $site_dir /usr/share/nginx/html
ls -lR $site_dir
ls -lR /usr/share/nginx/html
nginx &
sleep 1

# Start the linkchecker
/root/.pub-cache/bin/linkcheck :80