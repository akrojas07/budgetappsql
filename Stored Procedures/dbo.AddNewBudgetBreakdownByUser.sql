-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/23/20
-- Description:	Procedure to add new budget breakdown by user 
-- =============================================
CREATE PROCEDURE dbo.AddNewBudgetBreakdownByUserId 
	-- Add the parameters for the stored procedure here

	@UserId bigint,
	@BudgetType varchar(255),
	@Expenses decimal,
	@Savings decimal 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.budgetBreakdown
	(
		UserId,
		BudgetType,
		Expenses,
		Savings,
		CreatedDate,
		UpdatedDate 
	
	)
	values
	(	
		@UserId,
		@BudgetType,
		@Expenses,
		@Savings,
		SYSDATETIME(),
		SYSDATETIME()
	);
END
GO
