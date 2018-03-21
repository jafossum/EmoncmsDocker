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

Or override the CMD by typing a new command when running the container 

```sh
$ docker run -v (your_cert_location):/etc/letsencrypt --net host --rm certbot-renew-rpi:latest certbot renew --dry-run
```

### Generating certificates

To generate certificates run this image with the following command:

```sh
$ docker run -v (your_cert_location):/etc/letsencrypt --net host --rm certbot-renew-certbot:latest certbot certonly --standalone --preferred-challenges http-01 --email your@email.address -d example.com
```

