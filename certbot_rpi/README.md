# Certbot Renewal Docker Image

Cron docker image made on top of the `resin/rpi-raspbian:stretch` image for RaspberryPi

## Running the container

This Image is set up to run as a oneshot certbot renew. No create cert implemented.
Remember to add volume -v (your_cert_location):/etc/letsencrypt

### Run certbot with dry-run

Inside container run this command to test if certbot will work

```sh
$ certbot renew --dry-run
```

### Generating certificates

To generate certificates run this image with the following command:

```sh
$ docker run -v (your_cert_location):/etc/letsencrypt --net host -it --rm certbot-renew-certbot:latest /bin/bash
```

Inside the docker image run your cert generation command

```sh
$ certbot certonly --webroot -w /var/www/example -d example.com -d www.example.com
```
