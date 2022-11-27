#!/bin/bash

for nombre in $(cat lista_nombres.txt)
do
	if [ $nombre = "Juan" ]; then
		echo "Encontre a $nombre"
	fi
	let a=$a+1
done
