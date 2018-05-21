FROM resin/rpi-raspbian:stretch

LABEL maintainer="John A. Fossum <jafossum@gmail.com>"

# Add GPG keys and support for strech backports
RUN echo "deb http://ftp.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch_certbot.list
RUN gpg --keyserver pgpkeys.mit.edu --recv-key 8B48AD6246925553 \
        && gpg -a --export 8B48AD6246925553 | apt-key add - && echo OK
RUN gpg --keyserver pgpkeys.mit.edu --recv-key 7638D0442B90D010 \
        && gpg -a --export 7638D0442B90D010 | apt-key add - && echo OK

RUN apt update \
        && apt install -y certbot

CMD ["certbot", "renew"]
