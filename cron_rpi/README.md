# Cron Server Docker Image

Cron docker image made on top of the `resin/rpi-raspbian:stretch` image for RaspberryPi

## Running the container

There is provided a `.service` file for use with systemd service.

## Cron

This image is set up tp run defined cron jobs defined in the cron.txt file. 
Rersources needed to run jobs must be placed in the resources folder and coppied in the Dockerfile

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
