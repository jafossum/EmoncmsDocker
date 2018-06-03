# EMONCMS

Emoncms setup based on the official [emoncms docker](https://github.com/emoncms/emoncms-docker) repository.

## Certbot Docker Image

Certbot official image [certbot/certbot](https://hub.docker.com/r/certbot/certbot/)

## Running the container

This Image is set up to run the certbot command.
Remember to add volume -v (your_cert_location):/etc/letsencrypt

### Run certbot with dry-run

Inside container run this command to test if certbot will work

```sh
$ certbot renew --dry-run
```

Or override the CMD by typing a new command when running the container 

```sh
$ docker run -v (your_cert_location):/etc/letsencrypt --network host --rm certbot-renew-rpi:latest certbot renew --dry-run
```

### Generating certificates

To generate certificates run this image with the following command:

```sh
$ docker run -v (your_cert_location):/etc/letsencrypt --network host --rm certbot-renew-certbot:latest certbot certonly --standalone --preferred-challenges http-01 --email your@email.address -d example.com
```
