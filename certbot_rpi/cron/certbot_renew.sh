# Script for renewing LetsEncrypt certificates

# Stopping Nginx-server container
sudo systemctl stop nginx-docker.service

# Running certbot renew container
docker run -v (your_cert_location):/etc/letsencrypt --net host --rm certbot-renew-rpi:latest

# Starting Nginx-server container
sudo systemctl start nginx-docker.service
