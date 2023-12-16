#!/bin/bash

monitoreo() {

[ ! -d outputs ] && mkdir outputs  
CPU=$(top -bn1 | grep "Cpu(s):") #envia el una salida standar del proceso cpu, se ejecuta y cierra, asi no sigue mostrando. luego con el grep muestro que quiero mostrar
RAM=$(top -bn1 | grep "MiB Mem") 
PROCESOS=$(ps aux | wc -l) #ps aux es para ver todos los procesos en ejecucion,wc -l cuenta lineas gracias al -l.  
DISCO_ESPACIO=$(df -h / --output=avail)
DISCO_USADO=$(df -h / --output=pcent)
REPORT=$(echo "report"_date)
echo $REPORT
echo "-----MONITOR-----"
echo "uso de" $CPU  
echo "uso de" $RAM 
echo "cantidad de procesos" $PROCESOS 
echo "disco" $DISCO_ESPACIO 
echo "porcentaje" $DISCO_USADO 
}
monitoreo