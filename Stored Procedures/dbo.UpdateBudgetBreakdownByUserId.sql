-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/23/20
-- Description:	Procedure to update existing budget breakdown by user 
-- =============================================
CREATE PROCEDURE dbo.UpdateBudgetBreakdownByUser 
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@Expenses decimal,
	@Savings decimal,
	@BudgetType varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update dbo.budgetBreakdown 
	set 
	Expenses = @Expenses,
	Savings = @Savings,
	BudgetType = @BudgetType,
	UpdatedDate = SYSDATETIME()

	where UserId = @UserId

END
GO
