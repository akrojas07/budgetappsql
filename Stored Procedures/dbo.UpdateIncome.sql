USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateIncome]    Script Date: 10/12/2020 2:12:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to update exsiting income 
-- =============================================
ALTER PROCEDURE [dbo].[UpdateIncome]
	-- Add the parameters for the stored procedure here
	@IncomeId bigint,
	@IncomeAmount decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update dbo.budgetIncome 
	set IncomeAmount = @IncomeAmount,
	UpdatedDate = SYSDATETIME() 
	Where Id = @IncomeId
END
