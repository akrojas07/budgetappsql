Create table savings
(
	Id bigint not null primary key identity(1,1),
	UserId bigint not null foreign key references dbo.userAccount(Id),
	SavingsTypeId bigint not null foreign key references dbo.savingsType(Id),
	"Custom" bit default '0',
	"Description" varchar(255),
	Amount decimal,
	Created datetime,
	Updated datetime
);