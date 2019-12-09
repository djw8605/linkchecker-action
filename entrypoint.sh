#!/bin/sh -x

site_dir=$1

# Start the nginx server
rsync -a $site_dir/ /var/www/html/
nginx &

# Allow nginx to startup
sleep 1

# Start the linkchecker
/root/.pub-cache/bin/linkcheck :80

