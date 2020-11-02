-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 11/02/20
-- Description:	Procedure to bulk update savings 
-- =============================================
CREATE PROCEDURE dbo.UpdateSavings 
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
update dbo.budgetSavings
set SavingsAmount = s.Amount,
SavingsType = s.Type,
UpdatedDate = SYSDATETIME() 
from dbo.budgetSavings bs
join @Savings s on s.BudgetTypeId = bs.Id

END
GO
