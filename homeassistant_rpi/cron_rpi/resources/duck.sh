# HomeAssistant Domain DuckDns update
echo url="https://www.duckdns.org/update?domains=$DUCK_DOMAIN&token=$DUCK_TOKEN&ip=" | curl -k -o /duckdns/duck.log -K -
