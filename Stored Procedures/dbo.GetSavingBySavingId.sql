-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/13/20
-- Description:	Procedure to pull a savings record by savings id 
-- =============================================
CREATE PROCEDURE dbo.GetSavingBySavingId 
	-- Add the parameters for the stored procedure here
	@SavingId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	From dbo.budgetSavings
	where id = @SavingId;
END
GO
