# BasesDeDatosNoUBA
Este repositorio contiene un simple resumen y toma de apuntes de un curso acerca de Bases de datos, pero en especial,  a SQL 

### ¿Qué es una base de datos? ¿Qué tipos de bases de datos hay?
Una base de datos es una coleccion organizada de Datos, diseñada de tal forma que resulta eficiente, confiable y segura. Las bases de datos que mantienen una relación entre las tablas se las conoce por Bases de Datos Relacionales mientras que las Bases de Datos No Relacionales (NoSql) son aquellas que son mucho menos estructuradas y flexibles.
### ¿Cuáles son los principales componentes de una Base de datos relacional?
El principal componente son las tablas, las cuales contienen campos (columnas) y filas, cuyas filas mantienen una distinción por medio de claves únicas.
### ¿Qué es un DBMS?
Un DBMS es un gestor de bases de datos que actúa como intermediario para interactuar con una base de datos, contiene todas las herramientas necesarias para que podamos insertar, leer, modificar y eliminar datos en una base de datos. Por ejemplo : MySql.

### CONSULTAS
#### SELECT
Palabra reservada SELECT 
Ejemplos: 
```
SELECT * FROM <tabla>;
SELECT <campo1>, <campo2> FROM <tabla>;
SELECT DISTINCT <campo> FROM <tabla>; -> donde DISTINCT descartará los valores duplicados del campo
```
