/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Business Name]
      ,[Food Hygiene Rating Scheme ID]
      ,[Hygiene Score]
      ,[Rating Value]
      ,[ratingDate]
      ,[Local Authority Business ID]
      ,[new]
      ,[Last Uploaded]
  FROM [CamdenFood].[dbo].[CleanFoodHygieneRatingSchemeCamd]