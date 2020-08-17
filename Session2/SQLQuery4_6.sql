--Homework requirement 4/6​

--Change GradeDetails table always to insert value 100 in AchievementMaxPoints column if no value is provided on insert​

Alter table GradeDetails
add constraint df_GradeDetails_AchievementPoints 
default 100 for AchievementPoints
where AchievementPoints is null 

--Change GradeDetails table to prevent inserting AchievementPoints that will more than AchievementMaxPoints
Alter table [dbo].[GradeDetails] with check 
add constraint chk_GradeDetails_AchievementPoints 
check (AchievementPoints <= AchievementMaxPoints)

insert into [GradeDetails] (GradeID, AchievementTypeID, AchievementPoints, AchievementMaxPoints, AchievementDate)
values (0,1,101,100,2000-08-19)

select * from [GradeDetails]

--Change AchievementType table to guarantee unique names across the Achievement types
Alter table [dbo].[AchievementType] with check
add constraint uc_AchievementType_Name Unique ([Name])

insert into AchievementType (Name, Description, ParticipationRate)
values ('Domasni', NULL, 7)

select * from AchievementType
