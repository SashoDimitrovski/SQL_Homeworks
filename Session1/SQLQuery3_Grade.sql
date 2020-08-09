/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[StudentID]
      ,[CourseID]
      ,[TeacherID]
      ,[Grade]
      ,[Comment]
      ,[CreatedDate]
  FROM [Finki].[dbo].[Grade]