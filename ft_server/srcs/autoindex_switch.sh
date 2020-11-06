#!/bin/bash
if grep "autoindex on;" /etc/nginx/sites-enabled/localhost > /dev/null; then
  echo "Autoindex off"
  sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/localhost
else
  echo "Autoindex on"
  sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/localhost
fi
nginx -s reload
