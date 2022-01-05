# Imagen base
FROM ubuntu

#Actualizar
RUN apt-get -y update
RUN apt-get -y upgrade

#Instalar sysbench
RUN apt-get install sysbench -y


#Copiar las carpetas y cambiar permisos
COPY CD /programa/CD
COPY scripts /programa/scripts
COPY main.py /programa/main.py
WORKDIR /programa
RUN chmod +x -R scripts
RUN chmod +x -R CD