
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to get all savings by user id
-- =============================================
CREATE PROCEDURE dbo.GetSavingsByUserId 
	-- Add the parameters for the stored procedure here
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	from dbo.budgetSavings
	where userid = @UserId; 
END
GO
