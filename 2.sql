SELECT genre, COUNT(*) AS movie_count FROM movies
WHERE rating > 8.0
GROUP BY genre