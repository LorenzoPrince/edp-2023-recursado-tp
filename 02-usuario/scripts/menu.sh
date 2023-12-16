}l#!/bin/bash

PS3="Elija> "
echo "Hola, soy el menu del TP. ¿Que quiere hacer?"
select opcion in "Clasificar archivos" "Monitorear Sistema" "Analizar texto" "Salir"
do
	[ -z "$opcion" ] && echo "elegir opcion valida! " && continue
	[ $REPLY == 1 ] && bash clasificar.sh && continue
	[ $REPLY == 2 ] && echo "elegio monitorear el sistema! " && continue
	[ $REPLY == 3 ] && echo "elegio analizar texto! " && continue
	[ $REPLY == 4 ] && echo "elegio salir! " && break

	echo "Opcion elegida: " $opcion
done 

exit 0
