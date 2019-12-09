#!/bin/sh -x

site_dir=$1

# Start the nginx server
cp -rf $site_dir/* /usr/share/nginx/html
nginx &
sleep 1

# Start the linkchecker
/root/.pub-cache/bin/linkcheck :80