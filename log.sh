#!/bin/bash
sleep "30"
# Cambiar el modo de warp-cli a doh
echo "Configurando warp-cli al modo doh..."
warp-cli mode doh

# Realizar una solicitud a la API para obtener la IP
echo "Realizando solicitud en modo doh..."
curl 'https://www.cual-es-mi-ip.net/api/v1/ip' \
  -X 'POST' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: no-cache' \
  -H 'content-length: 0' \
  -H 'origin: https://www.cual-es-mi-ip.net' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://www.cual-es-mi-ip.net/' \
  -H 'sec-ch-ua: "Chromium";v="128", "Not;A=Brand";v="24", "Opera GX";v="114"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'sec-ch-ua-platform: "Android"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36'

# Cambiar el modo de warp-cli a warp+doh
echo "Configurando warp-cli al modo warp+doh..."
warp-cli mode warp+doh

# Realizar una solicitud a la API para obtener la IP en modo warp+doh
echo "Realizando solicitud en modo warp+doh..."
curl 'https://www.cual-es-mi-ip.net/api/v1/ip' \
  -X 'POST' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cache-control: no-cache' \
  -H 'content-length: 0' \
  -H 'origin: https://www.cual-es-mi-ip.net' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://www.cual-es-mi-ip.net/' \
  -H 'sec-ch-ua: "Chromium";v="128", "Not;A=Brand";v="24", "Opera GX";v="114"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'sec-ch-ua-platform: "Android"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36'
