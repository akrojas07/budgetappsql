-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to remove existing income
-- =============================================
CREATE PROCEDURE dbo.RemoveIncome
	-- Add the parameters for the stored procedure here
	@IncomeId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from dbo.budgetIncome
	where id = @IncomeId;	
END
GO
