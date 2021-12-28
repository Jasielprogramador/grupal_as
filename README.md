#Cosas k hay k hacer

1) Con conjuntos de datos me refería a datos de muestra que vayáis a utilizar (p.e. Employees para MySQL https://dev.mysql.com/doc/employee/en/), no a los tipos de datos. 

2) Debéis buscar diferentes conjuntos de datos que sirvan tanto para sistemas relacionales (MySQL/MariaDB/Postgres) como para no relacionales (MongoDB/InfluxDB), porque sino las comparaciones no van a ser correctas.

3) Sobre las operaciones a realizar (select, insert, ..), debéis pensar en algunas que sean comparables en sistemas relacionales como en no-relacionales.

4) Realizar el equivalente a un Insert en un sistema NoSQL es trivial, pero un "inner join" no tiene tanto sentido.
