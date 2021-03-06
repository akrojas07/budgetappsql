USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateExpense]    Script Date: 11/2/2020 9:00:44 AM ******/
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

	--update target1
	--	set target1.ExpenseAmount = expense.ExpenseAmount
	--from dbo.budgetExpenses target1
	--	join @Expenses expense on target1.Id = expense.ExpenseId;
END
