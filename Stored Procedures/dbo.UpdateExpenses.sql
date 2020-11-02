-- =============================================
-- Author:		Anakaren Rojas 
-- Create date: 11/02/20
-- Description:	Procedure to bulk update expenses 
-- =============================================
CREATE PROCEDURE dbo.UpdateExpenses 
	-- Add the parameters for the stored procedure here
	@Expenses dbo.BudgetInputsTableType readonly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.budgetExpenses 
	set ExpenseAmount = e.Amount,
	ExpenseType = e.Type,
	UpdatedDate = SYSDATETIME()

	from dbo.budgetExpenses be 
	join @Expenses e on e.BudgetTypeId = be.Id ;
	
END
GO
