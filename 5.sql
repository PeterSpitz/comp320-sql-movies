SELECT Title, genre, Budget FROM movies a
WHERE a.budget > (SELECT AVG(b.budget) FROM movies b
                  WHERE a.genre = b.genre)