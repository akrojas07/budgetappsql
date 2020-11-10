-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to bulk update incomes
-- =============================================
CREATE PROCEDURE dbo.UpdateIncomes 
	-- Add the parameters for the stored procedure here
	(
		@Incomes dbo.BudgetInputsTableType readonly
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	update dbo.budgetIncome
	set IncomeAmount = i.Amount, 
	IncomeType = i.BudgetTypeId,
	UpdatedDate = SYSDATETIME()
	from dbo.budgetIncome bi
	join @Incomes i on i.BudgetTypeId = bi.Id
END
GO
