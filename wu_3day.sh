curl 'https://api.weather.com/v3/wx/forecast/daily/3day?apiKey=6532d6454b8aa370768e63d6ba5a832e&icaoCode=KPHL&units=e&language=en-US&format=json' \
  -H 'authority: api.weather.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Google Chrome";v="87", " Not;A Brand";v="99", "Chromium";v="87"' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  -H 'origin: https://www.wunderground.com' \
  -H 'sec-fetch-site: cross-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.wunderground.com/' \
  -H 'accept-language: en-US,en;q=0.9' \
  --compressed | jq .
