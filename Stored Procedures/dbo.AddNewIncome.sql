USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[AddNewIncome]    Script Date: 10/12/2020 2:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to add new income 
-- =============================================
ALTER PROCEDURE [dbo].[AddNewIncome]
	-- Add the parameters for the stored procedure here
	@UserId bigint,
	@IncomeType varchar(255),
	@IncomeAmount decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into dbo.budgetIncome
	(
		UserId,
		IncomeType,		
		IncomeAmount,
		CreatedDate,
		UpdatedDate
	)
	Values
	(
		@UserId,
		@IncomeType,
		@IncomeAmount,
		SYSDATETIME(),
		SYSDATETIME()

	);
END
