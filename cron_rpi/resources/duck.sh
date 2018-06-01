# HomeAssistant Domain DuckDns update
echo url="https://www.duckdns.org/update?domains=$DOMAIN&token=$TOKEN&ip=" | curl -k -o /duckdns/duck.log -K -
