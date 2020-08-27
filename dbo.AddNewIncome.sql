-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/26/20
-- Description:	Procedure to add new income
-- =============================================
CREATE PROCEDURE dbo.AddNewIncome
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@IncomeType varchar(255),
	@Custom bit,
	@Description varchar(255),
	@Amount decimal,
	@Created datetime,
	@Updated datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @IncomeTypeId bigint = (select Id FROM dbo.incomeType  it WHERE @IncomeType = it.Type);
	
	Insert into dbo.income
	(
		UserId,
		IncomeTypeId,
		"Custom",
		"Description",
		
		Amount,
	
		Created,
		Updated
	)
	Values
	(
		@UserId,
		@IncomeTypeId,
		@Custom,
		@Description,
		@Amount,
		@Created,
		@Updated

	);
END
GO
