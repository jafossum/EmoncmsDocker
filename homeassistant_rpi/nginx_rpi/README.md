# NGINX Server Docker Image

NGINX docker image made on top of the `resin/rpi-raspbian:stretch` image for RaspberryPi

## Let`s Enrypt

This Docker image only contains the nginx server, and assumes that Lets Encrypt TLS certificates 
are created and handeled by a third party (like certbot), and that these are stored in the default 
`/etc/letsencrypt/` path on the native OS.

This volume must be passed to the container at runtime

## DNS

A DNS domain provider should be set up along with port forwarding of TLS port 443 (and optionally port 80)
in the Router.
