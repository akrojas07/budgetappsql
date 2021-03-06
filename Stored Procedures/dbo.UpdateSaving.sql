USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSaving]    Script Date: 10/12/2020 2:36:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to update existing saving line item
-- =============================================
ALTER PROCEDURE [dbo].[UpdateSaving]
	-- Add the parameters for the stored procedure here
	@SavingsId bigint,
	@SavingsAmount decimal

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update dbo.budgetSavings
	set savingsAmount = @SavingsAmount, UpdatedDate = SYSDATETIME()
	where id = @SavingsId; 
END
