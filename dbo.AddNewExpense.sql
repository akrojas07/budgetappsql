-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/26/20
-- Description:	Procedure to add new expense
-- =============================================
CREATE PROCEDURE dbo.AddNewExpense
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@ExpenseType varchar(255),
	@Custom bit,
	@Description varchar(255),
	@Amount decimal,
	@Created datetime,
	@Updated datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @ExpenseTypeId bigint = (select Id FROM dbo.expenseType  et WHERE @ExpenseType = et.Type);
	
	Insert into dbo.expenses
	(
		UserId,
		ExpenseTypeId,
		"Custom",
		"Description",
		
		Amount,
	
		Created,
		Updated
	)
	Values
	(
		@UserId,
		@ExpenseTypeId,
		@Custom,
		@Description,
		@Amount,
		@Created,
		@Updated

	);
END
GO
