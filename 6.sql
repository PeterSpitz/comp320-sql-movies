SELECT Title, genre, TotalVotes FROM movies a
WHERE a.TotalVotes = (SELECT MAX(b.TotalVotes) FROM movies b
                      WHERE a.genre = b.genre)