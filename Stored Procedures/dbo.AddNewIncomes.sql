-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to bulk add incomes 
-- =============================================
CREATE PROCEDURE dbo.AddNewIncomes 
	-- Add the parameters for the stored procedure here
(@Incomes dbo.BudgetInputsTableType readonly )
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.budgetIncome
	(
		UserId,
		IncomeType,		
		IncomeAmount,
		CreatedDate,
		UpdatedDate
	)
	select 
	i.UserId,
	i.Type,
	i.Amount,
	SYSDATETIME(),
	SYSDATETIME()
	from @Incomes i 
END
GO
