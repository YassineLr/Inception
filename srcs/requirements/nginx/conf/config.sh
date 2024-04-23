#!/bin/bash 

export VARS='$SSL_CERTIFICATE,$SSL_CERTIFICATE_KEY'
envsubst $VARS < /etc/nginx/conf.d/nginx.conf.template > /etc/nginx/conf.d/nginx.conf

rm -rf /etc/nginx/conf.d/nginx.conf.template
unset VARS
nginx -g "daemon off;"