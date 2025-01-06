-- Realizar una consulta en la base de datos que obtenga las series ordenadas por popularidad de los tres generos con más series a traves de una subconsulta.
SELECT series.titulo, 
	series.genero,
	series.año_lanzamiento,
    AVG(episodios.rating_imdb) AS popularidad_de_series
FROM series
INNER JOIN episodios ON series.serie_id = episodios.serie_id
WHERE series.genero IN (SELECT genero FROM 
						(SELECT genero, COUNT(*) AS cantidad_series FROM SERIES 
                        GROUP BY genero
                        ORDER BY cantidad_series DESC
                        LIMIT 3) AS top3)
GROUP BY series.serie_id
ORDER BY
 'Rating Promedio IMDb' DESC;
