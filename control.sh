#!/bin/bash

# Inicia log.sh en segundo plano
./entrypoint.sh > /dev/null 2>&1 &

# Guarda el ID del proceso de log.sh
log_pid=$!

# Ejecuta
./log.sh 

# Cuando demo.sh termine, detén el proceso de log.sh
kill -SIGTERM "$log_pid"
