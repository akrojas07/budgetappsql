-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/13/20
-- Description:	Procedure to pull income record by income id
-- =============================================
CREATE PROCEDURE dbo.GetIncomeByIncomeId 
	-- Add the parameters for the stored procedure here
	@IncomeId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	from dbo.budgetIncome
	where id = @IncomeId;
END
GO
