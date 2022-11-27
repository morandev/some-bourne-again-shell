#!/bin/bash

# API GENDERIZE
# {"name":"emilio","gender":"male","probability":0.99,"count":25883} 
# => "gender"

# API NATIONALIZE
# {"name":"emilio","country":[{"country_id":"ES","probability":0.13849973696268725},
# {"country_id":"MZ","probability":0.10571390688819501},{"country_id ":"CL","probability":008975185148274877}]}

# => "country[0]" => "country_id"

for nombre in $(cat lista_nombres.txt)
do
	if [ $nombre = "Juan" ]; then
        curl -s https://api.genderize.io/?name=$nombre | jq '.gender' | { read -r gen; echo "Gender of $nombre is: $gen"; } 
        curl -s https://api.nationalize.io/?name=$nombre | jq '.country[0].country_id' | { read -r cn; echo "Country of $nombre is: $cn"; }
	fi
        curl -s https://api.nationalize.io/?name=$nombre | jq '.country[0].country_id' | { read -r cn; echo "Country of $nombre is: $cn"; }
done

