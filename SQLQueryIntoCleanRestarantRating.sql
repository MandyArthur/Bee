/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Business Name]
     
      ,[Rating Value] hyRating
      ,CAST([Rating Date] as date) ratingDate

      ,[Local Authority Business ID] LABusinessID

      ,CAST([Longitude] + ' ' + [Latitude] AS VARCHAR(50)) as new

      ,[Last Uploaded] recentUpload
      ,[Location] joinedCoord
	        ,[New Rating Pending] pendingRating
	--INTO CleanrestaurantRating

  FROM [CamdenFood].[dbo].[FoodHygieneRatingSchemeCamd]
  WHERE [Rating Value]  is not null AND [Location] is not null