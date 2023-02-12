#!/bin/bash
# Usage: Post Install script for VPS
# Author: Greg
# -------------------------------------------------
 
# Update the system
sudo apt update -y
sudo apt upgrade -y

# Install nginx, php, and nodejs
sudo apt install -y nginx php8.1-fpm php-mysql php-cli php-curl php-mbstring npm nodejs

# Setup nginx
sudo systemctl enable nginx

# Setup nodejs
sudo npm install -g pm2 n
sudo n lts