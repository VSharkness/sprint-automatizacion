#!/bin/bash

LOGFILE="/home/marcos/Escritorio/Prácticas/Sprint/sprint-automatizacion/Tareas/logs/system_report.txt"

mkdir -p "$(dirname "$LOGFILE")"

echo "Usuarios conectados:" >> "$LOGFILE"
who >> "$LOGFILE"
echo "" >> "$LOGFILE"

echo "-----------------------------------------------------------" >> "$LOGFILE"
echo "Uso de CPU y memoria:" >> "$LOGFILE"
top -b -1 | head -n 10 >> "$LOGFILE"
echo "$LOGFILE"
echo "" >> "$LOGFILE"
echo "----------------------------" >> "$LOGFILE"
echo "· Memoria libre" >> "$LOGFILE"
free -h >> "$LOGFILE"
echo "" >> "$LOGFILE"

echo "-----------------------------------------------------------" >> "$LOGFILE"
echo "Espacio en disco:" >> "$LOGFILE"
df -h >> "$LOGFILE"
echo "" >> "$LOGFILE"

echo "-----------------------------------------------------------" >> "$LOGFILE"
echo "Últimos errores del sistema:" >> "$LOGFILE"
journalctl -k -n 10 >> "$LOGFILE"
