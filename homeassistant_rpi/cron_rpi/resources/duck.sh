# HomeAssistant Domain DuckDns update
echo url="https://www.duckdns.org/update?domains=__DUCK_DOMAIN__&token=__DUCK_TOKEN__&ip=" | curl -k -o /duckdns/duck.log -K -
