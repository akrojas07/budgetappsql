create table dbo.budgetIncome (
	Id bigint not null primary key identity(1,1), 
	UserId bigint not null foreign key references dbo.userAccount(Id),
	IncomeType varchar(255),
	IncomeAmount decimal, 
	CreatedDate datetime,
	UpdatedDate datetime
);