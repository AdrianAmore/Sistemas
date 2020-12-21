#!/bin/bash
lineasMaximas=`cat precipitaciones.txt | wc -l`
acum=0
cont=0
media=0

while [ $cont -le $lineasMaximas ]; do
	litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`
	acum=$((acum+litros))
	cont=$((cont+1))
done

media=$((acum/cont))
echo "La media es: $media litros"