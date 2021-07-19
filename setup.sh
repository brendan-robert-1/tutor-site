#!/bin/bash
# run `chmod 744` file first
sudo apt update
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

#pm2 
sudo npm i pm2 -g
pm2 start server
pm2 startup ubuntu

#firewall 
sudo ufw enable
sudo ufw status
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

#nginx
sudo apt install nginx

#sudo nano /etc/nginx/sites-available/default
# add the following:

# server_name yourdomain.com www.yourdomain.com;
# 
#     location / {
#         proxy_pass http://localhost:5000; #whatever port your app runs on
#         proxy_http_version 1.1;
#         proxy_set_header Upgrade $http_upgrade;
#         proxy_set_header Connection 'upgrade';
#         proxy_set_header Host $host;
#         proxy_cache_bypass $http_upgrade;
#     }

# Test that it works:
# sudo nginx -t

# Run
# sudo service nginx restart


#ssl
curl -o- https://raw.githubusercontent.com/vinyll/certbot-install/master/install.sh | bash
# sudo certbot --nginx -d yourdomain.com -d www.yourdomain.com
