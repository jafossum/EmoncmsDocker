# EMONCMS

Emoncms setup based on the official [emoncms docker](https://github.com/emoncms/emoncms-docker) repository.

## EmonCMS setup

EmonCMS runing behind and NginX setup and DuckDNS DNS provider.

## Certbot Docker Image

Certbot official image [certbot/certbot](https://hub.docker.com/r/certbot/certbot/)

## Running the container

the file docker-certbot.yml contains a predined way to run the certbot image with the 
certificate volume mounted

### Run certbot renew

```sh
$ docker-compose -f docker-certbot.yml run --rm cert renew
```

### Run certbot renew with dryrun (for testing)

```sh
docker-compose -f docker-certbot.yml run --rm cert renew --dry-run
```

### Generating certificates

To generate certificates run the following command: (Remember to change your email and domain first)

```sh
$ docker-compose -f docker-certbot.yml run --rm cert certonly --standalone --preferred-challenges http-01 --email your@email.address -d example.com
```

For interactive mode when creating certificate:

```sh
$ docker-compose -f docker-certbot.yml run --rm cert certonly
```

### Overriding Command

The [certbot/certbot](https://hub.docker.com/r/certbot/certbot/) image is set up default to run the certbot command
with the arguments supplied by the user. To run any other certbot command use the compose file commands above
and run any commands you like. The benefit for using the compose file is the mounting of the certificate directory.

