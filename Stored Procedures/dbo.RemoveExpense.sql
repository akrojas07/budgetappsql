USE [BudgetApp]
GO
/****** Object:  StoredProcedure [dbo].[RemoveExpense]    Script Date: 11/2/2020 8:58:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 10/12/20
-- Description:	Procedure to remove existing expense
-- =============================================
ALTER PROCEDURE [dbo].[RemoveExpense]
	-- Add the parameters for the stored procedure here
	@ExpenseId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from dbo.budgetExpenses 
	where id = @ExpenseId;

	--delete target1
	--from dbo.budgetExpenses target1
	--	join @ExpensesIds ids on target1.Id = ids.ExpenseId;
END
