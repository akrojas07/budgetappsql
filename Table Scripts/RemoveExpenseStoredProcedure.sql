-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to remove existing expense
-- =============================================
CREATE PROCEDURE dbo.RemoveExpense
	-- Add the parameters for the stored procedure here
	@ExpenseId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from dbo.budgetExpenses 
	where id = @ExpenseId;
END
GO
