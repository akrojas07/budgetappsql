-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to pull expenses by UserId 
-- =============================================
CREATE PROCEDURE dbo.GetExpensesByUserId
	-- Add the parameters for the stored procedure here
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select *
	from dbo.budgetExpenses
	where UserId = @UserId; 

END
GO
