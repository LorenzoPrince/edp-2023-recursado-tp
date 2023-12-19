}l#!/bin/bash

PS3="Elija> "
echo "Hola, soy el menu del TP. ¿Que quiere hacer?"
select opcion in "Clasificar archivos" "Monitorear Sistema" "Analizar texto" "Salir"
do
	[ -z "$opcion" ] && echo "elegir opcion valida! " && continue
	[ $REPLY == 1 ] && ./clasificador.sh && continue
	[ $REPLY == 2 ] && ./monitor.sh && continue
	[ $REPLY == 3 ] && ./submeu.sh && continue
	[ $REPLY == 4 ] && echo "elegio salir! " && break

	echo "Opcion elegida: " $opcion
done 

exit 0
