SELECT Title FROM movies
WHERE genre IN ('Romance', 'Sci-Fi')
GROUP BY Title
HAVING COUNT(*) = 2