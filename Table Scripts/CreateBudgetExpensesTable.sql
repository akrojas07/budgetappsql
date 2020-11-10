create table dbo.budgetExpenses (
	Id bigint not null primary key identity(1,1), 
	UserId bigint not null foreign key references dbo.userAccount(Id),
	ExpenseType varchar(255),
	ExpenseAmount decimal, 
	CreatedDate datetime,
	UpdatedDate datetime
);