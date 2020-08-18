--Homework requirement 2/3​

--Calculate the count of all grades per Teacher in the system and filter only grade count greater then 200​
select [TeacherID],[Grade], Sum (Grade) as TotalGradePerTeacher
from Grade
group by [TeacherID], [Grade]
having Sum (Grade) > 200   

/*Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100) 
and filter teachers with more than 50 Grade count*/
select [TeacherID], [Grade], Sum (Grade) as TotalGradePerTeacher
from [dbo].[Grade]
where [StudentID] <100
group by [TeacherID], [Grade]
having Sum (Grade) > 50

/*Find the Grade Count, Maximal Grade, and the Average Grade per Student on all grades in the system. 
Filter only records where Maximal Grade is equal to Average Grade​*/
select [StudentID], Count([Grade]) as GradeCount, Max([Grade]) as MaxGrade, Avg([Grade]) as AvgGrade
from [dbo].[Grade]
group by [StudentID]
having Max([Grade]) = Avg([Grade])

--List Student First Name and Last Name next to the other details from previous query​
select s.[FirstName] + ' ' + [LastName] as StudentName, [StudentID], Count([Grade]) as GradeCount, Max([Grade]) as MaxGrade, Avg([Grade]) as AvgGrade
from [dbo].[Grade]
inner join [dbo].[Student] as s on s.ID = Grade.StudentID
group by s.[FirstName] + ' ' + [LastName], [StudentID]
having Max([Grade]) = Avg([Grade])