#!/bin/bash

arch_pal=textos/texto1.txt
arch_mail=textos/texto1.txt

PS3="Elija> "
echo "Hola, soy el submenu del TP. ¿Qué quiere hacer?"
select opcion in "statsWord" "palindromeDetection" "mailAdressDetection" "Salir"
do
    case $opcion in
        "statsWord")
            ./statsWord.sh
            ;;
        "palindromeDetection")
            ./palindromo.sh "$arch_pal"
            ;;
        "mailAdressDetection")
            ./mail.sh "$arch_mail"
            ;;
        "Salir")
            echo "Ha elegido salir."
            break
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
done

exit 0
