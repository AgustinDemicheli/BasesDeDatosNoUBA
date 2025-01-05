# BasesDeDatosNoUBA
Este README.md contiene un simple resumen y toma de apuntes de un curso acerca de Bases de datos, pero en especial,  a SQL 

### ¿Qué es una base de datos? ¿Qué tipos de bases de datos hay?
Una base de datos es una coleccion organizada de Datos, diseñada de tal forma que resulta eficiente, confiable y segura. Las bases de datos que mantienen una relación entre las tablas se las conoce por Bases de Datos Relacionales mientras que las Bases de Datos No Relacionales (NoSql) son aquellas que son mucho menos estructuradas y flexibles.
### ¿Cuáles son los principales componentes de una Base de datos relacional?
El principal componente son las tablas, las cuales contienen campos (columnas) y filas, cuyas filas mantienen una distinción por medio de claves únicas.
### ¿Qué es un DBMS?
Un DBMS es un gestor de bases de datos que actúa como intermediario para interactuar con una base de datos, contiene todas las herramientas necesarias para que podamos insertar, leer, modificar y eliminar datos en una base de datos. Por ejemplo : MySql.

### CONSULTAS y CLAUSULAS
#### SELECT
Palabra reservada SELECT y DISTINCT
Ejemplos: 
```
SELECT * FROM <tabla>;
SELECT <campo1>, <campo2> FROM <tabla>;
SELECT DISTINCT <campo> FROM <tabla>; -> donde DISTINCT es una CLAUSULA que descartará los valores duplicados del campo
```
#### ORDER BY
Es una clausula utilizada para ordenar alfanumérica una consulta, puede llevar orden ascendente (ASC es su opción por defecto) o descendente (DESC). 
Ejemplos:
```
SELECT DISTINCT nombre FROM usuarios ORDER BY nombre;
SELECT fecha_nacimiento FROM USUARIOS ORDER BY fecha_nacimiento DESC;
```
#### LIMIT 
Para los casos en donde buscamos una salida limitada de filas a nuestra consulta utilizamos la clausula LIMIT.
Ejemplo:
```
SELECT nombre, duracion FROM peliculas ORDER BY duracion DESC LIMIT 10
```

#### WHERE
Nos ayudará a definir una condición para filtrar congruentemente los datos que buscamos en una tabla.
Ejemplo:
`SELECT * FROM Series WHERE genero = 'Drama';`


### OPERADORES DE COMPARACION 
Existen muchos comparadores para validar una condición en nuestras consultas:
#### Operadores aritméticos
```
<> # campo1 distinto de campo2
== # campo1 igual a campo2
<  # campo1 menor que campo2
<= # campo1 menor o igual que campo2
>  # campo1 mayor que campo2
>= # campo1 mayor o igual que campo2
```
#### Operadores lógicos
```
AND # si se cumple condición 1 Y condición 2
OR  # si se cummple condición 1 O condición 2
NOT # negado
#Ejemplo:
SELECT * FROM Series WHERE (genero = 'Drama' OR genero = 'Ciencia ficción');
```

#### IN / NOT IN 
Esta clausula sirve para filtrar entre subconjuntos que pertenezcan o no a una condición dada.
Ejemplos: 
```
SELECT * FROM peliculas WHERE genero NOT IN ('comedia', 'ciencia ficción');
SELECT * FROM Series WHERE genero IN ('Terror','Romance','Comedia');
```

#### LIKE 
Nos permite filtrar por un patrón en específico.
Ejemplo:
`SELECT titulo FROM Series WHERE titulo LIKE '%The%'; `

#### GROUP BY
Nos permite agrupar por campos valores presentes en una tabla.
Ejemplos:
```
SELECT serie_id FROM episodios GROUP BY 1;
SELECT serie_id, AVG(duracion) AS promedio, SUM(duracion) AS suma_duracion FROM episodios
WHERE serie_id IN (1,2) GROUP BY serie_id;
SELECT serie_id, COUNT(episodio_id) AS count_episodios FROM episodios GROUP BY serie_id; # Podemos observar cuantos episodios tiene cada serie
```
#### HAVING
Nos permite filtrar datos ya agrupados. 
Ejemplo: 
Filtrar dentro de las series de netflix las series que tengan mas de 10 episodios.
`SELECT serie_id, COUNT(episodio_id) AS numero_de_episodios FROM episodios GROUP BY serie_id HAVING COUNT(episodio_id) > 10; `
Filtrar las temporadas de la serie cuyo id es igual a 2 que superan la duracion 400.
`SELECT temporada, SUM(duracion) AS duracion_total FROM Episodios WHERE serie_id = 2 GROUP BY temporada HAVING SUM(duracion) > 400;`
### FUNCIONES 

#### SUM 
Permite sumar un campo de los registros de una tabla, puede poseer un alias para identificarlo.
Ejemplo: 
`SELECT SUM(duracion) AS suma_duracion_series FROM Series WHERE serie_id = 25;`

#### COUNT 
Nos permite contar la cantidad de elementos que posee un campo.
Ejemplos: 
```
SELECT COUNT(*) FROM episodios;
SELECT COUNT(*) FROM episodios WHERE serie_id = 22;
```
#### MAX/MIN/AVG
Devuelve el máximo/mínimo elemento existente que posee un campo y el promedio.
Ejemplos:
```
SELECT MAX(edad)  FROM usuarios;
SELECT MIN(salario)  FROM empleados;
SELECT AVG(altura) FROM personas WHERE nacionalidad IN ('Argentina','Brasil','Chile','Colombia','Ecuador','Paraguay',Uruguay);
```
