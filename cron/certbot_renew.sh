# Script for renewing LetsEncrypt certificates

# CD to workdir of docker-compose
cd $HOME/EmoncmsDocker

# Stopping Nginx-server container
docker-compose stop nginx

# Running certbot renew container
docker-compose -f docker-certbot.yml run --rm cert renew

# Starting Nginx-server container
docker-compose start nginx
