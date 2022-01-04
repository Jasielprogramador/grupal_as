# Imagen base
FROM ubuntu

#Actualizar
RUN apt-get -y update
RUN apt-get -y upgrade

#Instalar sysbench
RUN apt-get install sysbench python

COPY scripts /programa/scripts
COPY main.py /programa/main.py

WORKDIR /programa

RUN chmod +x -R /programa/scripts
