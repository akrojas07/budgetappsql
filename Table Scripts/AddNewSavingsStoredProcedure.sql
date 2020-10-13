-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to add new saving
-- =============================================
CREATE PROCEDURE dbo.AddNewSaving 
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@SavingsType varchar(255),
	@SavingsAmount decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.budgetSavings
	(
		UserId,
		SavingsType,
		SavingsAmount,
		CreatedDate,
		UpdatedDate
	)

	values
	(
		@UserId,
		@SavingsType,
		@SavingsAmount,
		SYSDATETIME(),
		SYSDATETIME()
	);
END
GO
