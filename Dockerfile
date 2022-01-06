# Imagen base
FROM ubuntu

#Actualizar
RUN apt-get -y update
RUN apt-get -y upgrade

#Copiar las carpetas y cambiar permisos
COPY scripts /programa/scripts
COPY main.py /programa/main.py
COPY sleep.sh /programa/sleep.sh
WORKDIR /programa
RUN chmod +x -R scripts
RUN apt-get install sysbench python3-pip -y
RUN mv scripts/mongodb/lua/oltp-mongo.lua /usr/share/sysbench/

#Permisos a sleep.sh
RUN chmod 777 sleep.sh

#Comando de inicio
CMD ./sleep.sh