-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(actor_id) AS apariciones_actor FROM actuaciones GROUP BY actor_id ORDER BY apariciones_actor DESC LIMIT 1;

-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT serie_id, AVG(rating_imdb) AS promedio_rating FROM episodios GROUP BY serie_id ORDER BY promedio_rating DESC LIMIT 1;
-- Pregunta 3
-- ¿Cual es el episodio con la duración más larga?
SELECT episodio_id ,duracion FROM episodios WHERE duracion = (SELECT MAX(duracion) FROM episodios);
