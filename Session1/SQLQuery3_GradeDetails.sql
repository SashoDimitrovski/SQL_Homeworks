/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[GradeID]
      ,[AchievementTypeID]
      ,[AchievementPoints]
      ,[AchievementMaxPoints]
      ,[AchievementDate]
  FROM [Finki].[dbo].[GradeDetails]