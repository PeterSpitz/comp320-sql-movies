SELECT Title, Genre, Runtime FROM movies a
WHERE CAST(a.Runtime AS INT) = (SELECT MAX(CAST(b.Runtime AS INT)) FROM movies b
                                WHERE a.genre = b.genre)