--Query 8:  Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database. 

SELECT tracks.Name FROM tracks
WHERE tracks.GenreId NOT IN (
    SELECT genres.GenreId FROM tracks
    JOIN genres ON tracks.GenreId = genres.GenreId
    GROUP BY genres.GenreId
    ORDER BY SUM(tracks.Milliseconds) DESC
    LIMIT 5)
    ORDER BY tracks.Name
    LIMIT 100;