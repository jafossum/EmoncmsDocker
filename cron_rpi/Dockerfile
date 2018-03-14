FROM resin/rpi-raspbian:stretch

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

RUN apt update \
        && apt install -y cron

# Cron jobs
ADD ./cron.txt /etc/cron.d/nginx_cron
RUN chmod 644 /etc/cron.d/nginx_cron

# DuckDns Shell
ADD ./resources/duck.sh /duckdns/duck.sh
RUN chmod +x /duckdns/duck.sh

EXPOSE 80 443

CMD ["cron", "-f"]
