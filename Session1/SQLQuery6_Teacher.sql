/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[DateOfBirth]
      ,[AcademicRank]
      ,[HireDate]
  FROM [Finki].[dbo].[Teacher]