USE GeoChallenge
GO
;
with 
matchedLSOARest
AS
(
 SELECT 
  
	l.LSOAname, 
	l.coords, 
	r.new, 
	r.hyRating, 
	l.coords.STContains(r.new)  bamo

FROM [GeoChallenge].dbo.CleanrestaurantRating r
JOIN [GeoChallenge].[dbo].[CleanLSOA] l ON l.coords.STContains(r.new) = 1
), avgRating
as 
(
SELECT 
AVG(hyRating) OVER (PARTITION BY LSOAname) avgRatingRest, 
LSOAname, 
coords, new
FROM matchedLSOARest
WHERE bamo = 1
)
SELECT 
LSOAname, 
coords
FROM avgRating
WHERE avgRatingRest = 5




--If a polygon contains a shape 2558

-- Group AVG by LSOA 


