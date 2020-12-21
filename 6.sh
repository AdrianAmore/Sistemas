#!/bin/bash
numero=`ls $1/*.txt | wc -w`
echo "Tenemos $numero ficheros con extensión txt que vamos a borrar de $1"
rm $1/*.txt
echo "Contenido de $1 tras borrado de ficheros txt"
ls -l $1
