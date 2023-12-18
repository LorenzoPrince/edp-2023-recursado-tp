#!/bin/bash
[ ! -d outputs_clasificador ] && mkdir outputs_clasificador
[ ! -d outputs_clasificador/img ] && mkdir outputs_clasificador/img
[ ! -d outputs_clasificador/snd ] && mkdir outputs_clasificador/snd
[ ! -d outputs_clasificador/txt ] && mkdir outputs_clasificador/txt

ruta_entrada=/home/lubuntu/trabajo_practico/edp-2023-recursado-tp/01-generador/outputs_gen

# Contadores para la numeración
contador_img=1
contador_snd=1
contador_txt=1

# Iterar sobre los archivos en la ruta de entrada
for archivo in "$ruta_entrada"/*; do
    # Obtener el tipo de archivo usando el comando file
    tipo_archivo=$(file -b --mime-type "$archivo")

    case "$tipo_archivo" in
        "image/png")
            carpeta_destino="img"
            nuevo_nombre="imagen${contador_img}.png"
            ((contador_img++))
            ;;
        "audio/wav")
            carpeta_destino="snd"
            nuevo_nombre="sonido${contador_snd}.wav"
            ((contador_snd++))
            ;;
        "text/plain")
            carpeta_destino="txt"
            nuevo_nombre="texto${contador_txt}.txt"
            ((contador_txt++))
            ;;
        *)
            echo "Archivo no clasificado: $archivo"
            continue
            ;;
    esac

    # Mover y renombrar el archivo
    mv "$archivo" "outputs_clasificador/$carpeta_destino/$nuevo_nombre"

    echo "Archivo clasificado: $(basename "$archivo") -> $carpeta_destino/$nuevo_nombre"
done
 

