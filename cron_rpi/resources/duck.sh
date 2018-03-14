# HomeAssistant Domain DuckDns update
echo url="https://www.duckdns.org/update?domains=__DOMAIN__&token=__TOKEN__&ip=" | curl -k -o /duckdns/duck.log -K -
