#!/bin/bash
echo "Usted a ingresado a statsWords"

echo "statsWords es un indicador estadístico de longitud de palabras"

echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
TEXTOS_DIR=/scripts/textos
ls $TEXTOS_DIR
while :
do
read ARCHI
if [[ $ARCHI == "Q" || $ARCHI == "q" ]]
then
echo "Regresando al menu principal..."
sleep 1
echo "Usted a vuelto al menu principal"
sleep 1
break

# -e es una opcion que signific existencia
elif [ -e $TEXTOS_DIR/$ARCHI.txt ]
then

ARCHI=$TEXTOS_DIR/$ARCHI
echo $ARCHI

largo=0
for palabra in $(<$ARCHI.txt)
do
    caracteres=${#palabra}
    if (( caracteres > largo ))
    then
        largo=$caracteres
        palabra_mas_larga=$palabra
    fi
done
echo "Analizando espere por favor..."
sleep 2
echo "La palabra mas larga del texto es \"$palabra_mas_larga\" y contiene $largo caracteres"


set `cat $ARCHI.txt`

palabra_mas_corta=$1
Caracteres=${#palabra_mas_corta}
for palabra2 in $(<$ARCHI.txt)
do
    siguiente_palabra=${#palabra2}
    if (( Caracteres >= siguiente_palabra ))
    then
        Caracteres=$siguiente_palabra
        palabra_mas_corta=$palabra2
    else
        Caracteres=${#palabra_mas_corta}
        palabra_mas_corta=$palabra_mas_corta
    fi
done
echo "La palabra mas corta del texto es \"$palabra_mas_corta\" y contiene $Caracteres caracteres"


# wc-m cuenta el numero de caracteres y wc -w cuenta el numero de palabras
cantC=$(wc -m < $ARCHI.txt)
cantP=$(wc -w < $ARCHI.txt)
echo "Su texto contiene $cantC caracteres y $cantP palabras en total, con un promedio de longitud de palabra por $(( $cantC / $cantP )) caracteres"

sleep 1
echo "Desea seguir usando statsWords para analizar otro texto? si / no"
read RESP
case $RESP in
[Ss] | [Ss][iI]) echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
 continue ;;
[Nn] | [Nn][oO]) echo "Regresando al menu principal..."
sleep 1
echo "Usted a vuelto al menu principal"
sleep 1
break
esac
else
echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
fi
done


