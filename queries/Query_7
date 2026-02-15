-- Query 7:  Write a query that lists all the customers that listen to longer-than-average tracks, excluding the tracks that are longer than 15 minutes. 


SELECT DISTINCT customers.FirstName, customers.LastName FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE tracks.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks)
  AND tracks.Milliseconds <= 900000
ORDER BY customers.FirstName, customers.LastName;