create table dbo.budgetSavings (
	Id bigint not null primary key identity(1,1), 
	UserId bigint not null foreign key references dbo.userAccount(Id),
	SavingsType varchar(255),
	SavingsAmount decimal, 
	CreatedDate datetime,
	UpdatedDate datetime
);