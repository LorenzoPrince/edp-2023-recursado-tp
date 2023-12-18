#!/bin/bash

# Verificar si un archivo existe
if [ ! -f "$1" ]; then
    echo "El archivo no existe."
    exit 1
fi

# Utilizar expresión regular para detectar direcciones de correo electrónico
direcciones=$(grep -E -o '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b' "$1" | sort -u)

# Verificar si se encontraron direcciones de correo electrónico
if [ -z "$direcciones" ]; then
    echo "No se encontraron direcciones de correo electrónico en el archivo."
else
    # Mostrar las direcciones de correo electrónico ordenadas y sin repeticiones
    echo "Direcciones de correo electrónico encontradas:"
    echo "$direcciones"
fi


