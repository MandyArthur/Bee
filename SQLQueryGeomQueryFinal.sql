
  SELECT 
  
	l.LSOAname, 
	l.coords, 
	fh.new

FROM [CamdenFood].[dbo].[CleanFoodHygieneRatingSchemeCamd] fh
JOIN [CamdenFood].[dbo].[CleanLSOA] l ON fh.new.STWithin(l.coords) = 1


