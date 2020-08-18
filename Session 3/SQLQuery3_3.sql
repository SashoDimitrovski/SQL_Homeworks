--Homework requirement 3/3
--Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student​
Create view vv_StudentGrades
as
select [StudentID], count([Grade]) as GradePerStudent
from [dbo].[Grade]
group by [StudentID]

select * from vv_StudentGrades

--Change the view to show Student First and Last Names instead of StudentID​
alter view vv_StudentGrades
as
select s.[FirstName] + ' ' + [LastName] as StudentName, count([Grade]) as GradePerStudent
from [dbo].[Grade]
inner join [dbo].[Student] as s on s.ID = Grade.StudentID
group by s.[FirstName] + ' ' + [LastName]

--List all rows from view ordered by biggest Grade Count​
select * from vv_StudentGrades
order by [GradePerStudent] desc

/*Create new view (vv_StudentGradeDetails) that will List all Students (FirstName and LastName) 
and Count the courses he passed through the exam(Ispit)​*/

Create view vv_StudentGradeDetails
as
select s.[FirstName] + ' ' + [LastName] as StudentName, c.[Name] as CourseName, Count(c.[ID]) as CourseCount
from [dbo].[Course] as c
inner join [dbo].[Student] as s on c.ID = s.ID
inner join [dbo].[AchievementType] as [at] on at.ID = c.ID
where at.[Name] = 'Ispit'
group by s.[FirstName] + ' ' + [LastName], c.Name
--I'm not sure if this is the required task :) 

select * from vv_StudentGradeDetails

