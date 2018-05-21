FROM resin/rpi-raspbian:stretch

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

RUN apt update \
        && apt install -y cron

# Cron jobs
COPY ./cron.txt /etc/cron.d/nginx_cron
RUN chmod 644 /etc/cron.d/nginx_cron

# DuckDns Shell
COPY ./resources/duck.sh /duckdns/duck.sh
RUN chmod +x /duckdns/duck.sh

CMD ["cron", "-f"]
