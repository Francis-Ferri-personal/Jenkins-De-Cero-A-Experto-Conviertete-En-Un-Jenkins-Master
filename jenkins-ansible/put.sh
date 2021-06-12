#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
    let counter=counter+1
    # awk sirve para patrones en cadenas
    name=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
    apellido=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
    # shuf sirve para tener valores random entre un rango
    edad=$(shuf -i 20-25 -n 1)
    mysql -u root -p1234 people -e "insert into registro values ($counter, '$name', '$apellido', $edad)"
    echo "$counter, $name, $apellido, $edad se importarom correctamente"
    sleep 7
done
