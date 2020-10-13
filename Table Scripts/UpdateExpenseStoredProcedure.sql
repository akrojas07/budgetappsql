USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateExpense]    Script Date: 10/12/2020 1:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to update existing expense
-- =============================================
ALTER PROCEDURE [dbo].[UpdateExpense]
	-- Add the parameters for the stored procedure here
	@ExpenseId bigint,
	@ExpenseAmount decimal

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update dbo.budgetExpenses
	set ExpenseAmount = @ExpenseAmount, UpdatedDate = SYSDATETIME()

	where id = @ExpenseId;
END
