FROM ubuntu:18.04

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

RUN apt update \
        && apt install -y cron \
        && apt clean

# Cron jobs
COPY ./resources/cron.txt /etc/cron.d/nginx_cron
RUN chmod 644 /etc/cron.d/nginx_cron

# DuckDns Shell
COPY ./resources/secret /duckdns/duck.sh
RUN chmod 700 /duckdns/duck.sh

CMD ["cron", "-f"]