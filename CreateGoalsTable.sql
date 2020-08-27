Create table goals
(
	Id bigint not null primary key identity(1,1),
	UserId bigint not null foreign key references dbo.userAccount(Id),
	GoalTypeId bigint not null foreign key references dbo.goalType(Id),
	"Custom" bit default '0',
	"CustomDescription" varchar(255),
	GoalName varchar(255),
	GoalAmount decimal,
	CurrentAmount decimal,
	PercentComplete decimal,
	Created datetime,
	Updated datetime
);