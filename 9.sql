SELECT Title, genre, Worldwide FROM movies a
WHERE (
    SELECT COUNT(*) 
    FROM movies b 
    WHERE b.genre = a.genre 
      AND b.Worldwide > a.Worldwide
) < (
    SELECT 0.20 * COUNT(*) 
    FROM movies c 
    WHERE c.genre = a.genre
)