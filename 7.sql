SELECT Title, genre, Rating FROM movies a
WHERE a.Rating = (SELECT MAX(b.Rating) FROM movies b
                      WHERE a.genre = b.genre)