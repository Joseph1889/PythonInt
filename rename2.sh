#! /bin/bash

escritorio="/workspaces/PythonInt"

cd "$escritorio" || exit

for script in *.ipynb; do
        parte1=$(echo "$script" | cut -d'_' -f1)
        parte2=$(echo "$script" | cut -d'_' -f2 | cut -d'.' -f1)
        extension=$(echo "$script" | cut -d'.' -f2)
	nuevo_nombre="${parte2}_${parte1}.${extension}"
	mv "$script" "$nuevo_nombre"
done	
