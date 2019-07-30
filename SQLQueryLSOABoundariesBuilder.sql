/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
		[description] LSOAdesc
      ,[name] Kname
      ,[LSOA 2011 Code] LSOAcode
      ,geometry::Parse([the_geom]) coords
      ,[LSOA 2011 Name] LSOAname
      ,[Last Uploaded] lastUploadedLSOA
	  INTO CleanLSOA
  FROM [CamdenFood].[dbo].[lsoaboundariescamden]

