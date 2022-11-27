#!/bin/bash

# API GENDERIZE
# https://api.genderize.io/?name=emilio

# En donde pasando como parámetro el nombre, nos devuelve un JSON el cual da un
# resultado como el siguiente:
# {"name":"emilio","gender":"male","probability":0.99,"count":25883}

# API NATIONALIZE
# https://api.nationalize.io/?name=emilio

# En donde pasando como parámetro el nombre, nos devuelve un JSON el cual
# # da un resultado como el siguiente:

# {"name":"emilio","country":[{"country_id":"ES","probability":0.13849973696268725},
# {"country_id":"MZ","probability":0.10571390688819501},{"country_id ":"CL","probability":008975185148274877}]}

nombre="Emilio"

#curl (client url) -s no mostrar los datos de descarga
#jq (JSON bash processor) read -r salida jq a variable

curl -s https://api.genderize.io/?name=$nombre | jq '.gender' | { read -r gen; echo "Gender of $nombre is: $gen"; } 

curl -s https://api.nationalize.io/?name=$nombre | jq '.country[0].country_id' | { read -r cn; echo "Country of $nombre is: $cn"; }