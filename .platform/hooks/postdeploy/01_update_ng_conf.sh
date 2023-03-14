#!/usr/bin/bash

# Replace the original nginx.conf by our custom one
sudo mv /tmp/custom_nginx.conf /etc/nginx/conf.d/elasticbeanstalk/00_application.conf

# Restart nginx to apply modifications
sudo systemctl reload nginx

# for installing chrominum
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum install ./google-chrome-stable_current_x86_64.rpm
sudo ln -s /usr/bin/google-chrome-stable /usr/bin/chromium
curl https://intoli.com/install-google-chrome.sh | bash
