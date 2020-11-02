-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/23/20
-- Description:	Procedure to pull budget type by user id
-- =============================================
CREATE PROCEDURE dbo.GetBudgetTypeByUserId 
	-- Add the parameters for the stored procedure here
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select budgetType
	from dbo.budgetBreakdown
	where UserId = @UserId; 
END
GO
