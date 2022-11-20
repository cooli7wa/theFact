#!/bin/bash -

sudo bundle update
sudo jekyll build

sudo rm -rf /var/www/theFact.com
sudo cp -R ./_site /var/www/theFact.com
sudo chmod -R a+r /var/www/theFact.com

sudo service nginx restart