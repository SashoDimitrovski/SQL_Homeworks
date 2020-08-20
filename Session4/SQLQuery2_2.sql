--Homework requirement 2/2​
--Declare scalar function (fn_FormatStudentName) for retrieving the Student description for specific StudentId in the following format:​
--StudentCardNumber without “sc-”​
--“ – “​
--First character of student FirstName​
--“.”​
--Student LastName​

create or alter function fn_FormatStudentName (@StudentId int)
returns nvarchar (50)
as
begin
declare @Result nvarchar (50)
select @Result = Right(StudentCardNumber, Len(StudentCardNumber-3) + '-' + SUBSTRING(FirstName,1,1) + '.' + LastName)
from [dbo].[Student]
where [ID] = @StudentId
return @Result
end

select [dbo].[fn_FormatStudentName] (4) 
-- Mi dava Conversion failed when converting the nvarchar value 'sc-82787' to data type int. 