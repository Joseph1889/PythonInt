#!/bin/bash

# Directorio con los archivos que deseas renombrar
directorio="/workspaces/PythonInt"

# Cambiar a ese directorio
cd "$directorio" || exit

# Procesar cada archivo en el directorio
for archivo in *.ipynb; do
    # Extraer la parte antes y después del guion bajo
    parte1=$(echo "$archivo" | cut -d'_' -f1)
    parte2=$(echo "$archivo" | cut -d'_' -f2 | cut -d'.' -f1)
    extension=$(echo "$archivo" | cut -d'.' -f2)

    # Crear el nuevo nombre
    nuevo_nombre="${parte2}_${parte1}.${extension}"

    # Mostrar el renombramiento (puedes comentar esta línea si no quieres ver la salida)
    echo "Renombrando: $archivo -> $nuevo_nombre"

    # Renombrar el archivo
    mv "$archivo" "$nuevo_nombre"
done
#!/bin/bash

# Directorio con los archivos que deseas renombrar
directorio="/ruta/a/tu/carpeta"

# Cambiar a ese directorio
cd "$directorio" || exit

# Procesar cada archivo en el directorio
for archivo in *.ipynb; do
    # Extraer la parte antes y después del guion bajo
    parte1=$(echo "$archivo" | cut -d'_' -f1)
    parte2=$(echo "$archivo" | cut -d'_' -f2 | cut -d'.' -f1)
    extension=$(echo "$archivo" | cut -d'.' -f2)

    # Crear el nuevo nombre
    nuevo_nombre="${parte2}_${parte1}.${extension}"

    # Mostrar el renombramiento (puedes comentar esta línea si no quieres ver la salida)
    echo "Renombrando: $archivo -> $nuevo_nombre"

    # Renombrar el archivo
    mv "$archivo" "$nuevo_nombre"
done

