-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 08/26/20
-- Description:	Procedure to add new saving
-- =============================================
CREATE PROCEDURE dbo.AddNewSaving
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@SavingType varchar(255),
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

	declare @SavingsTypeId bigint = (select Id FROM dbo.savingsType  st WHERE @SavingType = st.Type);
	
	Insert into dbo.savings
	(
		UserId,
		SavingsTypeId ,
		"Custom",
		"Description",
		
		Amount,
	
		Created,
		Updated
	)
	Values
	(
		@UserId,
		@SavingsTypeId,
		@Custom,
		@Description,
		@Amount,
		@Created,
		@Updated

	);
END
GO
