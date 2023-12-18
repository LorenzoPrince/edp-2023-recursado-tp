#!/bin/bash

PS3="Elija> "
echo "Hola, soy el submenu del TP. ¿Que quiere hacer?"
select opcion in "statsWord" "palindromeDetection" "mailAdressDetection" "Salir"
do
        [ -z "$opcion" ] && echo "elegir opcion valida! " && continue
        [ $REPLY == 1 ] && echo "statsWord" && continue
        [ $REPLY == 2 ] && echo "palindromeDetection! " && continue
        [ $REPLY == 3 ] && echo "mailAddressDetection! " && continue
        [ $REPLY == 4 ] && echo "elegio salir! " && break

        echo "Opcion elegida: " $opcion
done

exit 0
