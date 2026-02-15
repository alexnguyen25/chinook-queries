--Query 5: Creative addition. Make an interesting query that uses a JOIN of at least two tables.
--Creative addition: Counts how many tracks are in each genre, sorted from most to least tracks.

SELECT genres.Name, COUNT(tracks.TrackId) AS TrackCount
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.GenreId, genres.Name
ORDER BY TrackCount DESC;