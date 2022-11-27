#!/bin/bash

#   si el comando whoami retorna exito o 0, no ejecuta el else
#
# ejm 1

if whoami; then
    echo "Funciono!!!!"
else
    echo "No Funciono."
fi

#   Comparaciones numericas
#       n1 -eq n2 verifica si n1 es igual a n2
#       n1 -ge n2 verifica si n1 es mayor o igual a n2
#       n1 -gt n2 verifica si n1 es mayor a n2
#       n1 -le n2 verifica si n1 es menor o igual a n2
#       n1 -lt n2 verifica si n1 es menor a n2
#       n1 -ne n2 verifica si n1 es distinto a n2
#
# ejm 2

sudo ping -c 1 8.8.8.8

if [ $? -ne 0 ]; then  
    echo "No esta en red"
else
    echo "Si esta en red"
fi

#
# ejm 3

num=11

if [ $num -gt 10 ]; then
    echo "$num es mas grande que 10"
else    
    echo "$num es menor o igual que 10"
fi


#   Comparaciones de cadenas
#       str1 = str2 verifica si str1 es igual a str2
#       str1 != str2 verifica si str1 es distinto a str2
#       str1 < str2 verifica si str1 es menor a str2
#       str1 > str2 verifica si str1 es mayor a str2
#       -n str1 verifica si str1 es mayor que cero
#       -z str1 verifica que str1 tiene un length de 0  
#
# ejm 4, si estamos logueados como root va por el if

user="root"

if [ $user = $USER ]; then 
    echo "the user $user is the current logged-in user"
fi

#   Calculos matematicos
#       $((2+2))
#

cincomascinco=$((5 + 5))
echo $cincomascinco

var2=$(($cincomascinco * 2))
echo $var2
