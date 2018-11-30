# Script for renewing LetsEncrypt certificates

# CD to workdir of docker-compose
cd $HOME/EmoncmsDocker

# Stopping Nginx-server container
docker-compose stop nginx

# Running certbot renew container
docker run -v (your_cert_location):/etc/letsencrypt --network host --rm certbot/certbot renew

# Starting Nginx-server container
docker-compose start nginx
