use SEDCHome_2020_G7
--Homework requirement 1/2
--Declare scalar variable for storing FirstName values​
--Assign value ‘Antonio’ to the FirstName variable​
--Find all Students having FirstName same as the variable​

declare @FirstName as nvarchar (30)
set @FirstName = 'Antonio'
select * from [dbo].[Student]
where [FirstName] = @FirstName


--Declare table variable that will contain StudentId, StudentName and DateOfBirth
--Fill the table variable with all Female students
declare @StudentInfo table 
(StudentId int, StudentName nvarchar (30), DateOfBirth date)
insert into @StudentInfo
select [ID], [FirstName], [DateOfBirth]
from [dbo].[Student]
where Gender = 'F'

select * from @StudentInfo


--Declare temp table that will contain LastName and EnrolledDate columns​.
--Fill the temp table with all Male students having First Name starting with ‘A’​
--Retrieve the students from the table which last name is with 7 characters​

create table #StudentInfo2
(LastName nvarchar (30), EnrolledDate date)
insert into #StudentInfo2
select [FirstName], [DateOfBirth]
from [dbo].[Student]

select * from #StudentInfo2


create table #StudentInfo3
(LastName nvarchar (30), EnrolledDate date)
insert into #StudentInfo3
select [LastName], [DateOfBirth]
from [dbo].[Student]
where Gender = 'M'
and FirstName like 'A%'

select * from #StudentInfo3
where Len([LastName]) = 7    -- tuka pak ne dava rezultati. Vidi kaj tebe dali ke dade

--Find all teachers whose FirstName length is less than 5 and​
--the first 3 characters of their FirstName and LastName are the same

select * from [dbo].[Teacher]
where  Len([FirstName]) < 5
and Substring([FirstName],1,3) = Substring ([LastName], 1,3)
