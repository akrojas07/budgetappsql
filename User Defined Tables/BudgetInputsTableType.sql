-- Create the data type
CREATE TYPE [dbo].[BudgetInputsTableType] AS TABLE 
(
	UserId bigint,
	[BudgetTypeId] bigint,
	[Type] varchar(255),
	Amount decimal
)
GO
