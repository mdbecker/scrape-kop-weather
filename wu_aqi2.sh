curl 'https://sensors-out.wunderground.com/v3/iot/airquality/current?apiKey=ba9fe1c0c98844f69fe1c0c98824f64a&units=e&language=en&format=json&geocode=40.09%2C-75.39' \
  -H 'authority: sensors-out.wunderground.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Google Chrome";v="87", " Not;A Brand";v="99", "Chromium";v="87"' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  -H 'origin: https://www.wunderground.com' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.wunderground.com/' \
  -H 'accept-language: en-US,en;q=0.9' \
  --compressed | sed 's/"airQualitySensorId":\[[^]]*\],//g' | sed 's/"attribution":\[[^]]*\],//g' | sed 's/"sensorManufacturer":\[[^]]*\],//g' | sed 's/"elevation":\[[^]]*\],//g' | sed 's/"obsTimeIso":\[[^]]*\],//g' | sed 's/"epoch":\[[^]]*\],//g' | jq .
