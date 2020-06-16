--query 1
SELECT 
    BillingCountry as Country,
    sum(Total) as Sales
FROM  
    invoices
GROUP BY 
		Country
ORDER by
	Sales DESC;
	
--query 2
SELECT 
	genres.Name as GENRE, count(tracks.GenreId) as Quantity_ 
FROM 
	genres 
INNER JOIN 
	tracks 
on
	genres.GenreId = tracks.GenreId 
GROUP by
	genres.Name 
ORDER by Quantity_;

--query 3
SELECT 
	artists.Name as Artist, sum(invoice_items.Quantity) as Sales 
from 
	invoice_items 
INNER JOIN tracks 
	on invoice_items.TrackId = tracks.TrackId 
INNER JOIN albums 
	on tracks.AlbumId = albums.AlbumId 
INNER JOIN 
	artists on albums.ArtistId = artists.ArtistId 
GROUP by 
	artists.Name 
ORDER by 
	Sales 
DESC;