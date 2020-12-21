#!/bin/bash

echo "PARES"
for i in $(cat numeros.txt); do
	let resto=$i%2
	if [ $resto -eq 0 ]; then
		echo $i
	fi
done
echo "IMPARES"
for i in $(cat numeros.txt); do
	let resto=$i%2
	if [ $resto -ne 0 ]; then
		echo $i
	fi
done