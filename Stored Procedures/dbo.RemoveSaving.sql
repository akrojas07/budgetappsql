-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to remove existing savings 
-- =============================================
CREATE PROCEDURE dbo.RemoveSaving 
	-- Add the parameters for the stored procedure here
	@SavingsId bigint 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from dbo.budgetSavings
	where id = @SavingsId; 
END
GO
