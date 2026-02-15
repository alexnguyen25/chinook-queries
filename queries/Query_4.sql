-- Query 4:  Write a query that lists all the tracks that have a ' in the name (e.g. Jorge Da Capadócia, o Samba De Uma Nota Só (One Note Samba)) (this is á,é,í,ó,ú)


SELECT TrackId, tracks.Name FROM tracks
WHERE tracks.Name LIKE '%á%'
  OR tracks.Name LIKE '%é%'
  OR tracks.Name LIKE '%í%'
  OR tracks.Name LIKE '%ó%'
  OR tracks.Name LIKE '%ú%'
  ORDER BY tracks.Name;