
#Dependencias y cosas que se necesitan para la ejecución del programa:
1) `sudo apt-get install sysbench python3-pip snapd-y`
2) `sudo snap install go --classic`
3) `cd ~`
4) `go get github.com/krylovsk/influxdb-benchmark`
5) `cd <project-path>`
6) `RUN chmod +x -R scripts`
7) `sudo mv scripts/mongodb/lua/oltp-mongo.lua /usr/share/sysbench/`

#Ejecución del programa
1) `cd <project-path>`
2) `sudo docker-compose up`
3) En una nueva terminal: `python3 <project-path>/main.py`