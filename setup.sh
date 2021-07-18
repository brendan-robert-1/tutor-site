#!/bin/bash
# run `chmod 744` file first
sudo apt-get install nodejs -y
mkdir site
git clone https://github.com/brendan-robert-1/tutor-site.git
npm install
node  ./tutor-site/server.js