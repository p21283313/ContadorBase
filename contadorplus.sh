#!/bin/bash

# Contamos archivos y depuro la respuesta a la basura con dev null

contar_archivos() {
    local extension=$1
    # Usamos find para contar archivos 
    contador=$(find . -type f -name "*.$extension" 2>/dev/null | wc -l)
    echo "Número de archivos .$extension: $contador"

}

# Tipos de archivos que permite 
echo "Selecciona las extensiones de archivo que deseas contar:"
echo "1. .jpg"
echo "2. .mp3"
echo "3. .txt"
echo "4. Contar todos los tipos"

# hacer el script interactivo

read -p "Introduce el número de tu elección (1-4): " opcion

# segun seleccione el usuario 

case $opcion in
    1)
        contar_archivos "jpg"
        ;;
    2)
        contar_archivos "mp3"
        ;;
    3)
        contar_archivos "txt"
        ;;
    4)
        # Contar varios tipos de archivos
        contar_archivos "jpg"
        contar_archivos "mp3"
        contar_archivos "txt"
        ;;
    *)
        echo "Opción no válida."
        ;;
esac

# Resultados

 echo "Resultados:"
case $opcion in
    1)
        contar_archivos "jpg"
        ;;
    2)
        contar_archivos "mp3"
        ;;
    3)
        contar_archivos "txt"
        ;;
    4)
        contar_archivos "jpg"
        contar_archivos "mp3"
        contar_archivos "txt"
        ;;
esac
