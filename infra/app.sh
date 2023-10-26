#! /bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Beginning installation of nginx web server"

if ! which nginx > /dev/null 2>&1; then
  echo "Nginx is not installed"
else
  echo "Installing nginx"
  apt-get update
  apt-get install nginx -y
  systemctl start nginx
fi
