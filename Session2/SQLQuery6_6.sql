--Homework requirement 6/6

--List all possible combinations of Courses names and AchievementType names that can be passed by student
select c.[Name] as CourseName, a.Name as AchievementTypeName
from [dbo].[Course] as c
cross join
[dbo].[AchievementType] as a

--List all Teachers that has any exam Grade
select DISTINCT t.[FirstName] as TeacherName, g.Grade as Grade
from [dbo].[Teacher] as t
inner join [dbo].[Grade] as g on t.ID = g.TeacherID

--List all Teachers without exam Grade
select DISTINCT t.[FirstName] as TeacherName
from [dbo].[Teacher] as t
inner join [dbo].[Grade] as g on t.ID = g.TeacherID
where g.Grade is NULL

--List all Students without exam Grade (using Right Join)​
select DISTINCT s.[FirstName] as StudentName
from [dbo].[Student] as s
right join [dbo].[Grade] as g on s.ID = g.ID
where g.Grade is NULL 

select DISTINCT s.[FirstName], s.[LastName], g.[Comment]
from Student as s 
left join [dbo].[Grade] as g on s.ID = g.ID
order by Comment desc

select* from student
select * from [dbo].[Grade]

