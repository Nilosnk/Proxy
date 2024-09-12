#!/bin/bash

if [ ! -f /etc/letsencrypt/live/example.com/fullchain.pem ]; then
  echo "Obteniendo certificados SSL..."
  docker-compose run --rm certbot certonly --webroot --webroot-path=/usr/share/nginx/html -d example.com
fi
