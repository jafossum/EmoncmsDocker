FROM resin/rpi-raspbian:stretch

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

RUN apt update \
	&& apt install -y ca-certificates nginx

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

ADD ./nginx_conf/homeassistant.conf /etc/nginx/sites-available/homeassistant.conf

# Disable default conf and add homeassistant.conf symlink
RUN cd /etc/nginx/sites-enabled \
    && unlink default \
    && ln -s /etc/nginx/sites-available/homeassistant.conf homeassistant.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
