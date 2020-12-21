#!/bin/bash
lineasMaximas=`cat precipitaciones.txt | wc -l`
cont=0

while [ $cont -le $lineasMaximas ]; do
	dia=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $1}'`
	litros=`cat precipitaciones.txt | head -$cont | tail -1 | awk '{print $2}'`
	
	if [ $litros -eq 0 ]; then
		echo "El dia $dia (`./diasem.sh $dia`) no llovió"
	fi
	cont=$((cont+1))
done
