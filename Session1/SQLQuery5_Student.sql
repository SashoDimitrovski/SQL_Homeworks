/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[DateOfBirth]
      ,[EnrollDate]
      ,[Gender]
      ,[NationalIDNumber]
      ,[StudentCardNumber]
  FROM [Finki].[dbo].[Student]