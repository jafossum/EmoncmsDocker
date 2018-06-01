# Swap
mv nginx_conf/homeassistant.conf nginx_conf/homeassistant.conf_build
mv nginx_conf/secret nginx_conf/homeassistant.conf

# Build the image from Dockerfile
docker build --pull -t nginx-server-rpi:latest .

# Cleanup
mv nginx_conf/homeassistant.conf nginx_conf/secret
mv nginx_conf/homeassistant.conf_build nginx_conf/homeassistant.conf
