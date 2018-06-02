FROM ubuntu:18.04

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

RUN apt update \
	&& apt install -y ca-certificates nginx \
    && apt clean

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./nginx_conf/secret /etc/nginx/sites-available/emoncms.conf

# Disable default conf and add emoncms.conf symlink
RUN cd /etc/nginx/sites-enabled \
    && unlink default \
    && ln -s /etc/nginx/sites-available/emoncms.conf emoncms.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]