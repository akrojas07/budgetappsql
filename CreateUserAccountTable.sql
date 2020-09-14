Create table userAccount
(
	Id bigint not null primary key identity(1,1),
	Email varchar(255) not null,
	FirstName varchar(255) not null,
	LastName varchar(255) not null,
	[Password] varchar(255) not null,
	[Status] bit not null default '0',
	Created datetime,
	Updated datetime
);