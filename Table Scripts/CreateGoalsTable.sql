create table dbo.goals
(
	id bigint not null primary key identity(1,1),
	userId bigint not null foreign key references dbo.userAccount(Id),
	goalName varchar(255),
	goalSummary varchar(255),
	startDate datetime,
	endDate dateTime,
	amount decimal,
	CreatedDate DateTime,
	UpdatedDate DateTime
);
