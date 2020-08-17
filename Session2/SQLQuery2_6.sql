--Homework requirement 2/6​

--Find all Students with FirstName = Antonio ordered by Last Name
use SEDCHome_2020_G7
SELECT * 
from dbo.[Student] 
where FirstName = 'Kristina'
Order by [LastName]

--List all Students ordered by FirstName​
SELECT * 
from dbo.[Student] 
Order by FirstName

--Find all Male students ordered by EnrolledDate, starting from the last enrolled
SELECT * 
from dbo.[Student]
where Gender = 'M' 
order by [EnrolledDate] desc 

