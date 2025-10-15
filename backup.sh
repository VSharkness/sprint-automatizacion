#!/bin/bash
# Script de copia de seguridad automática

# Variables
ORIGEN="/home/marcos/Documentos"
DESTINO="/home/marcos/Escritorio/Prácticas/Sprint/sprint-automatizacion/Tarea 2/backups"
FECHA=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="/home/marcos/Escritorio/Prácticas/Sprint/sprint-automatizacion/Tarea 2/logs/backup.log"

# Crear carpeta destino si no existe
mkdir -p "$DESTINO/$FECHA"

# Copiar archivos (puedes usar rsync o cp -r)
cp -r "$ORIGEN"/* "$DESTINO/$FECHA"

# Calcular tamaño total copiado
TAMANO=$(du -sh "$DESTINO/$FECHA" | cut -f1)

# Registrar log
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Backup completado — Tamaño: $TAMANO" >> "$LOGFILE"

echo "✅ Backup realizado con éxito en $DESTINO/$FECHA"
