-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to bulk insert new savings
-- =============================================
CREATE PROCEDURE dbo.AddNewSavingss  
	-- Add the parameters for the stored procedure here
(
	@Savings dbo.BudgetInputsTableType readonly
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.budgetSavings
	(
		UserId,
		SavingsType,
		SavingsAmount,
		CreatedDate,
		UpdatedDate
	)

	select 
	s.UserId,
	s.Type,
	s.Amount,
	SYSDATETIME(),
	SYSDATETIME()

	from @Savings s
END
GO
