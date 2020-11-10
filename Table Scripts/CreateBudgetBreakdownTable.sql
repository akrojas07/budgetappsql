create table dbo.budgetBreakdown (
	Id bigint not null primary key identity(1,1), 
	UserId bigint not null foreign key references dbo.userAccount(Id),
	BudgetType varchar(255),
	Expenses decimal, 
	Savings decimal, 
	CreatedDate datetime,
	UpdatedDate datetime
);