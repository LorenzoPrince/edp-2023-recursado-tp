#!/bin/bash

# función para verificar si una palabra es palíndromo
es_palindromo() {
    palabra=$1
    palabra_invertida=$(echo "$palabra" | rev) # rev es un comando que invierte los caracteres 

    if [ "${palabra,,}" = "${palabra_invertida,,}" ]; then
        return 0  # Es un palíndromo
    else
        return 1  # No es un palíndromo
    fi
}
# verifica si es un archivo existente
     if [ ! -f "$1" ]; then
    	 echo "el archivo no existe"
	 exit 1
     fi

# mostrar palabras palíndromas en el archivo
# la opcion -r invierte el conjunto de caracteres especificaados
while IFS= read -r linea; do
    # Utilizar tr para eliminar acentos y convertir a minúsculas
    palabras=$(echo "$linea" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')

    # iterar sobre las palabras y verificar si son palíndromas
    for palabra in $palabras; do
        if es_palindromo "$palabra"; then
            echo "Palíndromo encontrado: $palabra"
        fi
    done
done < "$1"



