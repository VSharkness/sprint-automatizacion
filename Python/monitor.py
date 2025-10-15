import psutil
import time

log_file = "/home/marcos/Escritorio/Prácticas/Sprint/sprint-automatizacion/Tareas/logs/monitor_log.txt"

for i in range(10):
    cpu = psutil.cpu_percent(interval=1)
    memoria = psutil.virtual_memory()
    procesos = len(psutil.pids())

    resultado = (
        f"CPU: {cpu}% | "
        f"RAM usada: {memoria.used / (1024**2):.2f} MB | "
        f"RAM libre: {memoria.available / (1024**2):.2f} MB | "
        f"Procesos activos: {procesos}"
    )

    print(resultado)

    with open(log_file, "a") as f:
        f.write(resultado + "\n")

    time.sleep(5)

