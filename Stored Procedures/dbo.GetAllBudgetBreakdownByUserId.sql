-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/23/20
-- Description:	Procedure to pull all budget breakdown information by user id 
-- =============================================
CREATE PROCEDURE dbo.GetAllBudgetBreakdownByUserId
	-- Add the parameters for the stored procedure here
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from dbo.budgetBreakdown where UserId = @UserId; 
END
GO
