-- Identificar las series más exitosas en la base de datos NetflixDB, las series más exitosas sedefinen por cantidad de episodios y rating promedio de IMDB
-- El resultado es una tabla con cuatro columnas: titulo de la serie cantidad de episodios y rating promedio de imdb, y su ranking global



WITH cte_episodios AS (
SELECT	series.titulo,
		COUNT(episodio_id),
        AVG(episodios.rating_imdb) AS promedio_rating 
		FROM series

        INNER JOIN episodios ON series.serie_id = episodios.serie_id
		GROUP BY series.serie_id

) 
SELECT *, DENSE_RANK() OVER (ORDER BY promedio_rating DESC) AS 'Rating promedio de imdb' FROM cte_episodios;
