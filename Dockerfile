# Imagen base
FROM ubuntu

#Actualizar
RUN apt-get -y update
RUN apt-get -y upgrade

#Instalar sysbench
RUN apt-get install sysbench libmongoc-dev libbson-dev luarocks -y
RUN luarocks install mongorover --local


#Copiar las carpetas y cambiar permisos
COPY scripts /programa/scripts
COPY main.py /programa/main.py
WORKDIR /programa
RUN chmod +x -R scripts