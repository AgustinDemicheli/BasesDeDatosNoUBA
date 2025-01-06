-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.

SELECT genero, COUNT (*) AS numero_de_series
FROM SERIES 
GROUP BY genero
ORDER BY numero_de_series DESC;

-- Esta consulta SQL nos permite ver cuántas series hay en cada género dentro de la base de datos NetflixDB. 
-- Agrupando las series por su género y contándolas, podemos identificar cuáles géneros son más prevalentes.

-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.

SELECT series.titulo AS 'Título de la Serie', COUNT(episodios.episodio_id) AS 'Numero de episodios', AVG(episodios.imdb) AS 'Promedio rating'
FROM series 
INNER JOIN episodios ON series.serie_id = episodios.serie_id
GROUP BY series.serie_id
ORDER BY 'Promedio rating' DESC
LIMIT 3;





-- Con esta consulta, identificamos las tres series con el mayor rating IMDB 
-- en la base de datos y contamos cuántos episodios tiene cada una de ellas, combinando información de las tablas Series y Episodios.

-- ¿Cuál es la duración total de todos los episodios para la serie "Stranger Things"? 
-- Este análisis te permitirá entender el compromiso temporal necesario para ver una serie completa.

SELECT SUM(episodios.duracion) FROM series
INNER JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger things';
