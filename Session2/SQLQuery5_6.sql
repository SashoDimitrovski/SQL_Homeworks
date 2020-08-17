use SEDCHome_2020_G7
--Homework requirement 5/6​
--Create Foreign key constraints from diagram or with script​


alter table [dbo].[Grade] with check 
add constraint FK_Grade_Id foreign key ([StudentID]) references Student ([ID])

alter table [dbo].[Grade] drop constraint FK_Grade_Id 






select * from [dbo].[Grade]
select * from [dbo].[Student]
