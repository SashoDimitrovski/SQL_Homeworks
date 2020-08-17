--Homework requirement 1/6​


--Find all Students with FirstName = Antonio​
use SEDCHome_2020_G7
select * 
from Student 
where [FirstName] = 'Vesna​'

--Find all Students with DateOfBirth greater than ‘01.01.1999’​
select * 
from Student 
where [DateOfBirth] > '01.01.1999'

--Find all Male students​
select * 
from Student
where [Gender] = 'M'

--Find all Students with LastName starting With ‘T’​
select * 
from Student
where [LastName] like 'T%'

--Find all Students Enrolled in January/1998​
select * 
from Student
where EnrolledDate >='1998.01.01' and EnrolledDate < '1998.02.01'

--Find all Students with LastName starting With ‘J’ enrolled in January/1998​
select * 
from dbo.Student
where EnrolledDate >='1998.01.01' and EnrolledDate < '1998.02.01'
and LastName like 'E%'