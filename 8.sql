SELECT Title, genre, Worldwide FROM movies a
WHERE a.genre = 'Sci-Fi'
AND a.Worldwide IN (SELECT b.Worldwide FROM movies b
                   WHERE b.genre = 'Sci-Fi'
                   ORDER BY b.Worldwide DESC
                   LIMIT (SELECT CAST(COUNT(*)*.2 AS INT) FROM movies
                        WHERE genre = 'Sci-Fi'))