--Query 6: Creative addition. Make an interesting query that uses a GROUP statement and at least two tables.
-- Creative addition: Sums up the total duration in milliseconds of all tracks per album, sorted from longest to shortest.


SELECT albums.Title, SUM(tracks.Milliseconds) AS TotalDuration
FROM albums
JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId, albums.Title
ORDER BY TotalDuration DESC;