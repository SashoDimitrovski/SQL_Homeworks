-- Homework requirement 3/6​

--List all Teacher First Names and Student First Names in single result set with duplicates​
select FirstName 
from Teacher
UNION ALL
select FirstName 
from Student

--List all Teacher Last Names and Student Last Names in single result set. Remove duplicates​
select LastName 
from Teacher
UNION 
select LastName 
from Student

--List all common First Names for Teachers and Students
select FirstName 
from Teacher
INTERSECT  
select FirstName 
from Student