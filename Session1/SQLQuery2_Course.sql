/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[Name]
      ,[Credit]
      ,[AcademicYear]
      ,[Semester]
  FROM [Finki].[dbo].[Course]