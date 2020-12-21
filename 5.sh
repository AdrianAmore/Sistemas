#!/bin/bash
lineasMaximas=`cat listado.txt | wc -l`
numLinea=1

windows=0 
linux=0
windowsproc=0
linuxproc=0

while [ $numLinea -le $lineasMaximas ]; do
	linea=`cat listado.txt | head -$numLinea | tail -1`
	user=`echo $linea | awk '{print $1}'`
	os=`echo $linea | awk '{print $2}'`
	proc=`echo $linea | awk '{print $3}'`
	
	if [ $os = "Windows" ]; then
		windows=$((windows+1))
		windowsproc=$((windowsproc+proc))
	fi
	
	if [ $os = "Linux" ]; then
		linux=$((linux+1))
		linuxproc=$((linuxproc+proc))
	fi
	numLinea=$((numLinea))
done
echo "Windows -> $windows $windowsproc"
echo "Windows -> $linux $linuxproc"