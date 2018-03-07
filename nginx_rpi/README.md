# NGINX Server Docker Image

NGINX docker image made on top of the resin/rpi-raspbian:stretch image for RaspberryPi

## Running the container

There is provided a .service file for use with systemd service.

## Let`s Enrypt

This Docker image only contains the nginx server, and assumes that Let`s Encrypt TLS certificates 
are created and handeled by a third party (like certbot), and that these are stored in the default 
/etc/letsencrypt/ path on the native OS.

## DNS

A DNS domain provider should be set up along with port forwarding of TLS port 443 (and optionally port 80)
in the Router.

This volume must be passed to the container at runtime

## Systemd

A service file is needed to control NGINX with *systemd*.

For most systems, the file is

    $ /etc/systemd/system/[name of your service].service

## Enabling the service

You need to reload systemd to make the daemon aware of the new configuration.

	$ sudo systemctl --system daemon-reload

To have Home Assistant start automatically at boot, enable the service.

	$ sudo systemctl enable [name of your service]

To disable the automatic start, use this command.

	$ sudo systemctl disable [name of your service]

To start Home Assistant now, use this command.

	$ sudo systemctl start [name of your service]
