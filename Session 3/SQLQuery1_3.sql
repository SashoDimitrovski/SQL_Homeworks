-- Homework requirement 1/3​
use SEDCHome_2020_G7

--Calculate the count of all grades in the system​
select * from Grade

select Sum([Grade]) as TotalGrade
from Grade
group by Grade

--Calculate the count of all grades per Teacher in the system​
select [TeacherID], count ([Grade]) as TotalGradePerTeacher
from Grade
Group by [TeacherID]

select [TeacherID], sum ([Grade]) as TotalGradePerTeacher
from Grade
Group by [TeacherID] -- this is with both Sum and Count, because I wasn't sure which one is required 

--Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100)
select [StudentID], [TeacherID], sum ([Grade]) as TotalGradePerTeacher
from Grade
Group by [StudentID], [TeacherID] 
having [StudentID] <= 100

select [TeacherID], sum ([Grade]) as TotalGradePerTeacher
from Grade
where [StudentID] < 100
Group by [TeacherID]   -- there are 2 options here too, because, again, I wasn't sure about the requirements

--Find the Maximal Grade, and the Average Grade per Student on all grades in the system
select [StudentID], Max([Grade]) as MaxGrade, Avg([Grade]) as AvgGrade
from Grade
group by [StudentID] 
