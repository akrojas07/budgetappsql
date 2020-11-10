-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/13/20
-- Description:	Procedure to pull expense record by expense id 
-- =============================================
CREATE PROCEDURE dbo.GetExpenseByExpenseId 
	-- Add the parameters for the stored procedure here
	@ExpenseId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	From dbo.budgetExpenses
	where id = @ExpenseId;
END
GO
